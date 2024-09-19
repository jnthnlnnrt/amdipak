<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{asset('favicon.ico')}}">

    <!-- Font -->
    <link rel="stylesheet" href="https://rsms.me/inter/inter.css">

    <!-- Scripts -->
    @vite('resources/css/app.css')
</head>

<body class="bg-cover bg-no-repeat text-sm bg-gray-50 h-dvh"
    style="background-image: url({{asset('/vendor/fcadevelopment/resources/img/backgroundLogin.png')}})">
    <div class="flex h-full items-center">
        <div class="hidden lg:block lg:w-2/3">
            <div class="flex justify-center">
                <img class="h-20" src="{{asset('/vendor/fcadevelopment/resources/img/brand/dipak.png')}}" alt="">
            </div>
        </div>
        <div class="w-full lg:w-1/3">
            <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
                <div class="pb-4 lg:hidden">
                    <img class="h-16" src="{{asset('/vendor/fcadevelopment/resources/img/brand/dipak.png')}}" alt="">
                </div>
                <div class="w-full bg-gray-50 bg-opacity-50 lg:bg-gray-400 lg:bg-opacity-30  rounded-lg border">
                    <div class="p-6 space-y-4 md:space-y-6">
                        <h1
                            class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                            Bienvenido, inicie sesion.
                        </h1>
                        <form action="{{route('login')}}" method="POST" class="space-y-4 md:space-y-6">
                            @csrf
                            <div>
                                <x-forms.label for="email">Correo electronico:</x-forms.label>
                                <x-forms.input id="email" name="email" type="email" placeholder="Correo electronico"
                                    required />
                            </div>
                            <div>
                                <x-forms.label for="password">Contraseña:</x-forms.label>
                                <x-forms.input id="password" name="password" type="password" placeholder="Contraseña"
                                    required />
                            </div>
                            @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                    <x-alerts.danger class="text-center">{{$error}}</x-alerts.danger>
                                    @endforeach
                                </ul>
                            </div>
                            @endif
                            <x-buttons.primary class="w-full py-2.5">Iniciar sesión</x-buttons.primary>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <div class="fixed bottom-0 left-0 right-0 z-40 px-4 py-2 bg-gray-800 flex items-center justify-end">
        <img class="h-5" src="{{asset('/vendor/fcadevelopment/resources/img/brand/FCA.png')}}" alt="">
    </div>
</body>

</html>