import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-auth-page',
  standalone: true,
  imports: [],
  templateUrl: './auth-page.html',
  styleUrls: ['./auth-page.css']
})
export class AuthPage {
  constructor(private router: Router) {}

  goToLogin(): void {
    this.router.navigate(['/login']);
  }

  goToRegister(): void {
    this.router.navigate(['/register']);
  }
}
