@extends('layouts/admin')

@section('content')
    @if(Session::has('message'))
        <p class="alert alert-info" style="font-size: larger;font-weight: bolder;background: #409aff;color:#fff">{{ Session::get('message') }}</p>
    @endif
<div class="card card-primary">
    <div class="card-header">
        <h3 class="card-title">Add New Vacancy</h3>
    </div>
    <!-- /.card-header -->
    <!-- form start -->
    <form method="post" action="{{url('admin/vacancy/store')}}">
        @csrf
        <div class="card-body">
            <div class="form-group">
                <label>Title</label>
                <input type="text" class="form-control" id="Title" name="Title" placeholder="Enter Title" required>
            </div>
            <div class="form-group">
                <label>Department</label>
                <select name="Department" class="form-control" required>
                    <option value="IT Department">IT Department</option>
                    <option value="Accountant">Accountant</option>
                    <option value="HR">HR</option>
                    <option value="Comercial">Comercial</option>
                </select>
            </div>
            <div class="form-group">
                <label>Governate</label>
                <select name="Governorate" class="form-control" required>
                    <option value="دمشق">دمشق</option>
                    <option value="حلب">حلب</option>
                    <option value="حمص">حمص</option>
                    <option value="اللاذقية">اللاذقية</option>
                    <option value="طرطوس">طرطوس</option>
                    <option value="دير الزور">دير الزور</option>
                    <option value="درعا">درعا</option>
                    <option value="السويداء">السويداء</option>
                </select>
            </div>
            <div class="form-group">
                <label>Code</label>
                <input type="text" class="form-control" id="Code" name="Code" placeholder="Enter Title" required>
            </div>
            <div class="form-group">
                <label>Description</label>
                <textarea  class="form-control" id="Description" name="Description" required></textarea >
            </div>
            <div class="form-group">
                <label>Qualifications</label>
                <textarea  class="form-control" id="Qualifications" name="Qualifications" required></textarea>
            </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</div>
<!-- /.card -->
@endsection
