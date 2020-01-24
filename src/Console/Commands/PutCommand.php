<?php

namespace Application\Console\Commands;

use Illuminate\Console\Command;

class PutCommand extends Command
{
    /**
     * @var string
     */
    protected $signature = 'app:put';

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
        $path = 'json/'.time().'.json';

        $contents = json_encode(['foo' => 'bar']);

        $bool = \Storage::put($path, $contents);

        $this->info($bool);
    }
}
