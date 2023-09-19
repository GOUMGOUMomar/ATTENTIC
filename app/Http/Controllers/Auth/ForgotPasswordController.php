<?php 
  
namespace App\Http\Controllers\Auth; 
  
use Carbon\Carbon; 
use Illuminate\Support\Str;
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
  
class ForgotPasswordController extends Controller
{
      /**
       * Write code on Method
       *
       * @return response()
       */
      public function showForgetPasswordForm()
      {
         return view('auth.forgetPassword');
      }
  
      /**
       * Write code on Method
       *
       * @return response()
       */
      public function submitForgetPasswordForm(Request $request)
      {
          if (in_array($request->userType, ['admin', 'teacher', 'student'])) {
            $tableName=$request->userType.'s';
            $emailName=$request->userType.'_email';
            $validator = Validator::make($request->all(), [
                'email' => 'required|email|exists:'.$tableName.','.$emailName,
                'userType' => 'required',
            ]);
    
            if ($validator->fails()) {
                return redirect()->back()->withError($validator)->withInput();
            }
          }else{
            return redirect()->back()->withError(['userType'=>'user Type is required'])->withInput();
          }
          $token = Str::random(64); 
  
          DB::table('password_resets')->insert([
              'email' => $request->email, 
              'token' => $token, 
              'userType' => $request->userType, 
              'created_at' => Carbon::now()
            ]);
  
          Mail::send('email.forgetPassword', ['token' => $token,'userType'=>$request->userType], function($message) use($request){
              $message->to($request->email);
              $message->subject('Reset Password');
          });
  
          return back()->with('message', 'We have e-mailed your password reset link!');
      }
      /**
       * Write code on Method
       *
       * @return response()
       */
      public function showResetPasswordForm($token,$userType) { 
         return view('auth.forgetPasswordLink', ['token' => $token,'userType' => $userType]);
      }
  
      /**
       * Write code on Method
       *
       * @return response()
       */
      public function submitResetPasswordForm(Request $request)
      {
        if (in_array($request->userType, ['admin', 'teacher', 'student'])) {
            $tableName=$request->userType.'s';
            $emailName=$request->userType.'_email';
            $validator = Validator::make($request->all(), [
                'email' => 'required|email|exists:'.$tableName.','.$emailName,
                'password' => 'required|string|min:6|confirmed',
                'password_confirmation' => 'required',
                'token' => 'required',
            ]);
    
            if ($validator->fails()) {
                return redirect()->back()->withError($validator)->withInput();
            }
          }else{
            return redirect()->back()->withError(['userType'=>'user Type is required'])->withInput();
          }
  
          $updatePassword = DB::table('password_resets')
                              ->where([
                                'email' => $request->email, 
                                'token' => $request->token,
                                'userType' => $request->userType
                              ])
                              ->first();
  
          if(!$updatePassword){
            return back()->withInput()->withError(['msg'=>'Invalid token!'])->withInput();;
          }
          DB::table($tableName)
          ->where(["$request->userType".'_email' => $request->email])
          ->update([ 
            "$request->userType"."_password"=> Hash::make($request->password)
          ]);
          DB::table('password_resets')->where(['email'=> $request->email,'userType' => $request->userType])->delete();
  
          return redirect()->route('login')->withSuccess('Your password has been changed!');
      }
}