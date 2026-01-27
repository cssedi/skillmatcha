import { Routes } from '@angular/router';
import { AuthPage } from './features/auth/pages/auth-page/auth-page';
import { Login } from './features/auth/components/login/login';
import { Register } from './features/auth/components/register/register';

export const routes: Routes = [
  { path: '', redirectTo: 'auth', pathMatch: 'full' },
  { path: 'auth', component: AuthPage },
  { path: 'login', component: Login },
  { path: 'register', component: Register },
];
