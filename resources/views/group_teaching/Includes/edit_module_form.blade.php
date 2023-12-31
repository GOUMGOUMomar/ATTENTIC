<!-- Form Basic -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
  <h6 class="m-0 font-weight-bold text-primary">Create Teachers</h6>
  create new teacher
</div>
<div class="card-body">
  <form>
    <div class="form-group row mb-3">


      <input type="hidden" name="module_id" value="{{$module['module_id']}}">
      <div class="col-xl-6">
        <label class="form-control-label">Short Cut<span class="text-danger ml-2">*</span></label>
        <input type="text" class="form-control" required name="short_cut" value="{{$module['short_cut']}}">
        <span id="short_cut_error" class="invalid-feedback"></span>
      </div>
      <div class="col-xl-6">
        <label class="form-control-label">Module<span class="text-danger ml-2">*</span></label>
        <input type="text" class="form-control" required name="module_name" value="{{$module['module_name']}}">
        <span id="module_name_error" class="invalid-feedback"></span>
      </div>

    </div>
    <div class="form-group row mb-3">
      <div class="col-xl-6">
        <button id="update" type="button" class="btn btn-warning">Update</button>
      </div>
    </div>

  </form>
</div>