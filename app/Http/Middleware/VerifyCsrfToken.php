<?php
namespace App\Http\Middleware;
use Closure;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as BaseVerifier;

class VerifyCsrfToken extends BaseVerifier
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    public function handle($request, Closure $next)
    {
        // ¨Ï¥ÎCSRF
        // return parent::handle($request, $next);
        // ¸T¥ÎCSRF
        return $next($request);
    }
    // protected $except = [
    //     //
    // ];
}