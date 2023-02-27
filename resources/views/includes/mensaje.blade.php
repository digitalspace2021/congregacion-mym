@if(session('Mensaje'))
    <div class="alert alert-success alert-dismissible" data-auto-dismiss="3000">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
        <h4><i class="icon fa fa-check"></i> Mensaje Congregacion</h4>
        <ul>
            <li>{{ session('Mensaje') }}</li>
        </ul>
    </div>
@endif