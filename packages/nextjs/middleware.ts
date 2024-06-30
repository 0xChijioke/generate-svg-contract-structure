// middleware.ts
import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

export function middleware(request: NextRequest) {
  const userAgent = request.headers.get('user-agent') || '';
  const isMobile = /Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile|WPDesktop/i.test(userAgent);

  if (isMobile) {
    return NextResponse.redirect(new URL('/mobile-redirect', request.url));
  }

  return NextResponse.next();
}

export const config = {
  matcher: '/:path*',
};
