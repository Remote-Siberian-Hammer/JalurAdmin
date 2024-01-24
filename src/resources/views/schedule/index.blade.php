@extends('layouts.base')

@section('content')
    @auth
        <div id="content" class="col-lg-9">
            @include('layouts.top-navbar')
            <div class="container mb-5">
                <div class="mt-5 mb-5">
                    <h3 class="text-center">Выберите зал</h3>
                </div>
                <div class="row">
                    <div class="col-6 mx-auto mt-5">
                        @if (count($halls) == 0)
                            <div class="alert alert-warning" role="alert">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>Данных нет!</span>
                                    <a class="btn" href="{{ route('hall.index') }}">Добавить</a>
                                </div>
                            </div>
                        @else
                            @foreach ($halls as $hall)
                                <div class="mb-3">
                                    <a href="{{ route('schedule.for_hall', ['hall_id' => $hall->id]) }}" class="btn geo w-100">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path d="M12 14c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z"></path>
                                            <path d="M11.42 21.814a.998.998 0 0 0 1.16 0C12.884 21.599 20.029 16.44 20 10c0-4.411-3.589-8-8-8S4 5.589 4 9.995c-.029 6.445 7.116 11.604 7.42 11.819zM12 4c3.309 0 6 2.691 6 6.005.021 4.438-4.388 8.423-6 9.73-1.611-1.308-6.021-5.294-6-9.735 0-3.309 2.691-6 6-6z"></path>
                                        </svg> {{ $hall->name }}
                                    </a>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endauth
@endsection
