@extends('layouts/admin')

@section('content')
    @if(Session::has('message'))
        <p class="alert alert-info" style="font-size: larger;font-weight: bolder;background: #409aff;color:#fff">{{ Session::get('message') }}</p>
    @endif
<div class="card card-primary">
    <div class="card-header">
        <h3 class="card-title">Configurations</h3>
    </div>
    <!-- /.card-header -->
    <!-- form start -->
    <form method="post" action="{{url('admin/setting/update')}}">
        <div class="card-body">
            <div class="form-group">
                <label>Regret Message</label>
                <textarea class="form-control" rows="4" name="regret">{{$setting->regret}}</textarea>
            </div>
            <div class="form-group">
                <label>Thanks Message</label>
                <textarea class="form-control" rows="4" name="thank">{{$setting->thank}}</textarea>
            </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Edit</button>
        </div>
    </form>
</div>
<!-- /.card -->
@endsection
