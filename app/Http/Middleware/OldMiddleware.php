<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class OldMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        
        if (intval($request->input('age')) < 18) {
           // return redirect('/');
          echo "你只有".intval($request->input('age'))."歲禁入";
        }
        return $next($request);
    }
}
