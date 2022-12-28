@if(Auth::guard('web')->check())
    <p>
       login user aou are user
    </p>
@else
    <p>
        logout user aou are user
    </p>
    @endif

@if(Auth::guard('admin')->check())
    <p>
        login user aou are admin
    </p>
@else
    <p>
        logout user aou are admin
    </p>
@endif
