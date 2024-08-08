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

<body class="antiliased bg-gray-50 text-sm">
    <!-- Navbar -->
    <nav class="bg-white border-b border-gray-300 px-4 p-2.5 fixed left-0 right-0 top-0 z-50">
        <div class="grid grid-cols-3">
            <div class="flex items-center justify-start">
                <button data-drawer-target="drawer-navigation" data-drawer-toggle="drawer-navigation"
                    aria-controls="drawer-navigation"
                    class="p-2 mr-2 text-gray-600 rounded-lg cursor-pointer md:hidden hover:text-gray-900 hover:bg-gray-100 focus:bg-gray-100 focus:ring-2 focus:ring-gray-100">
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
                    <a href="https://dipak.com.mx" class="flex items-center">
                        <x-application-logo class="mr-3 h-8" />
                        <span class="text-lg font-semibold">Asset Manager<span class="font-light"> Dipak</span></span>
                    </a>
                </div>
            </div>
            <div class="flex items-center justify-center">
                <div class="md:hidden">
                    <x-application-logo class="h-8" />
                </div>
            </div>
            <div class="flex items-center justify-end">
                <button type="button" class="flex items-center mr-2 text-sm md:mr-0" id="user-menu-button"
                    aria-expanded="false" data-dropdown-toggle="dropdown">
                    <span class="sr-only">Open user menu</span>
                    <div>
                        <div
                            class="relative inline-flex items-center justify-center w-9 h-9 overflow-hidden bg-gray-100 rounded-full">
                            <span class="font-medium text-gray-600">JC</span>
                        </div>
                    </div>
                    <div class="ml-2 font-medium hidden md:block">
                        {{Auth::user()->name}}
                    </div>
                </button>
                <!-- Dropdown menu -->
                <div class="hidden z-50 my-4 w-56 list-none bg-white divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600 rounded-xl"
                    id="dropdown">
                    <div class="py-3 px-4 md:hidden">
                        <span
                            class="block text-sm font-semibold text-gray-900 dark:text-white">{{Auth::user()->name}}</span>
                        <span class="block text-sm text-gray-900 truncate dark:text-white">{{Auth::user()->email}}/span>
                    </div>
                    <ul class="py-1 text-gray-700 dark:text-gray-300" aria-labelledby="dropdown">
                        <li>
                            <a href="#"
                                class="flex items-center py-2 px-4 text-sm hover:bg-primary-100 dark:hover:bg-gray-600 dark:hover:text-white">
                                <i class="fa-solid fa-arrow-right-from-bracket w-4 h-4 mr-2 text-red-400"></i>
                                Cerrar sesión</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <!-- Sidebar -->
    <aside
        class="fixed top-0 left-0 z-40 w-64 h-screen pt-14 transition-transform -translate-x-full bg-white border-r border-gray-200 md:translate-x-0"
        aria-label="Sidenav" id="drawer-navigation">
        <div class=" overflow-y-auto py-5 px-3 h-full bg-white">
            <ul class="space-y-1">
                <li>
                    <a href="{{route('dashboard')}}"
                        class="flex items-center p-2 font-medium text-gray-900 rounded-lg hover:bg-primary-100 group">
                        <i class="fa-solid fa-gauge-high w-5 h-5 text-gray-500 transition duration-75 group-hover:text-gray-900"></i>
                        <span class="ml-3">Dashboard</span>
                    </a>
                </li>
                <li>
                    <button type="button"
                        class="flex items-center p-2 w-full font-medium text-gray-900 rounded-lg transition duration-75 group hover:bg-primary-100"
                        aria-controls="dropdown-pages" data-collapse-toggle="dropdown-pages">
                        <i class="fa-solid fa-industry flex-shrink-0 w-5 h-5 text-gray-500 transition duration-75 group-hover:text-gray-900"></i>
                        <span class="flex-1 ml-3 text-left whitespace-nowrap">Organización</span>
                        <i class="fa-solid fa-chevron-down w-4 h-4"></i>
                    </button>
                    <ul id="dropdown-pages" class="hidden">
                        <li>
                            <a href="{{route('departments')}}"
                                class="flex items-center p-2 pl-10 w-full font-medium text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700">
                                <i class="fa-solid fa-sitemap w-5 h-5"></i>
                                <span class="ml-3">Departmentos</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <!-- Page content -->
    <main class="px-5 md:ml-64 h-auto pt-14">
        {{$slot}}
    </main>
</body>

</html>