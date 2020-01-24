<?php

namespace Application\Console\Commands;

use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Arr;

class SignedUrlCommand extends Command
{
    /**
     * @var string
     */
    protected $signature = 'app:signed-url';

    /**
     * @var string
     */
    protected $description = 'Command description';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $path = Arr::last(\Storage::files('json'));

        $url = \Storage::temporaryUrl($path, Carbon::now()->addMinutes(5));

        $contents = file_get_contents($url);

        $this->info($contents);
    }
}
