<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{{ config('app.name', 'Laravel') }} - {{ $title ?? 'Page Title' }}</title>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{asset('/vendor/fcadevelopment/favicon.png')}}">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Fontawesome -->
    <script defer src="{{ asset('/vendor/plugins/fontawesome/js/all.js') }}"></script>
    <script defer src="{{ asset('/vendor/plugins/fontawesome/js/fontawesome.js') }}"></script>

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="antiliased bg-white text-sm">
    <!-- Navbar -->
    <nav class="bg-white border-b border-gray-200 px-4 py-2.5 fixed left-0 right-0 top-0 z-50">
        <div class="grid grid-cols-3">
            <div class="flex items-center justify-start">
                <button data-drawer-target="drawer-navigation" data-drawer-toggle="drawer-navigation"
                    aria-controls="drawer-navigation"
                    class="p-2 mr-2 text-gray-600 rounded-lg cursor-pointer md:hidden hover:text-gray-900 hover:bg-gray-100 focus:bg-gray-100 dark:focus:bg-gray-700 focus:ring-2 focus:ring-gray-100 dark:focus:ring-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
                    <svg aria-hidden="true" class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                            d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                            clip-rule="evenodd"></path>
                    </svg>
                    <svg aria-hidden="true" class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                            d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                            clip-rule="evenodd"></path>
                    </svg>
                    <span class="sr-only">Toggle sidebar</span>
                </button>
                <div class="hidden md:block">
                    <a href="http://dipak.com.mx" class="flex items-center justify-between">
                        <x-application-logo class="mr-3 h-8" />
                        <span class="text-lg font-semibold">Asset Manager <span class="font-light">Dipak</span></span>
                    </a>
                </div>
            </div>
            <div class="flex items-center justify-center">
                <div class="md:hidden">
                    <x-application-logo class="h-8" />
                </div>
            </div>
            <div class="flex items-center justify-end">
                <button type="button" class="flex mr-2 md:mr-0" id="user-menu-button" aria-expanded="false"
                    data-dropdown-toggle="dropdown">
                    <span class="sr-only">Open user menu</span>
                    <div class="relative inline-flex items-center justify-center w-10 h-10 overflow-hidden bg-gray-100 ring-1 ring-primary-200 rounded-full">
                        <span class="font-medium text-gray-600 dark:text-gray-300">JL</span>
                    </div>
                    <span class="font-medium self-center ml-2 hidden md:block">
                        {{Auth::user()->name}}
                    </span>
                </button>
                <!-- Dropdown menu -->
                <div class="hidden z-50 my-4 w-56 text-base list-none bg-white divide-y divide-gray-100 shadow rounded-xl" id="dropdown">
                    <div class="py-3 px-4 md:hidden">
                        <span class="block text-sm font-semibold text-gray-900">{{Auth::user()->name}}</span>
                        <span class="block text-sm text-gray-900 truncate">{{Auth::user()->email}}</span>
                    </div>
                    <ul class="py-1 text-gray-700 dark:text-gray-300" aria-labelledby="dropdown">
                        <li>
                            <a href="#"
                                class="flex items-center py-2 px-4 text-sm hover:bg-primary-100 dark:hover:bg-gray-600 dark:hover:text-white">
                                <i class="fa-solid fa-arrow-right-from-bracket w-4 h-4 text-red-400 mr-2"></i>
                                Cerrar sesión</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <p class="text-sm ...">The quick brown fox ...</p>
    <p class="text-base ...">The quick brown fox ...</p>
    <p class="text-lg ...">The quick brown fox ...</p>
    <p class="text-xl ...">The quick brown fox ...</p>
    <p class="text-2xl ...">The quick brown fox ...</p>

    <p class="font-light ...">The quick brown fox ...</p>
    <p class="font-normal ...">The quick brown fox ...</p>
    <p class="font-medium ...">The quick brown fox ...</p>
    <p class="font-semibold ...">The quick brown fox ...</p>
    <p class="font-bold ...">The quick brown fox ...</p>

    {{$slot}}
</body>

</html>