<x-filament-widgets::widget>
    <div class="grid grid-cols-1 sm:grid-cols-1 md:grid-cols-2 gap-4">
        @foreach ($this->getWidgets() as $widget)
            <div>
                @livewire($widget)
            </div>
        @endforeach
    </div>
</x-filament-widgets::widget>
