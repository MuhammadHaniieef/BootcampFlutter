import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _confirm = TextEditingController();
  bool _obsc1 = true, _obsc2 = true;
  bool _loading = false;

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (_pass.text != _confirm.text) {
      _show('Konfirmasi password tidak cocok');
      return;
    }
    if (_loading) return;
    setState(() => _loading = true);
    try {
      await AuthService.registerWithEmail(_email.text.trim(), _pass.text);
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      _show(e.message ?? 'Gagal mendaftar');
    } catch (e) {
      _show(e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _registerGoogle() async {
    try {
      await AuthService.signInWithGoogle();
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      _show('Google Sign-In belum terkonfigurasi: $e');
    }
  }

  void _show(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 12),
              Center(
                child: Image.asset('assets/regist_pict.png',
                    width: w * 0.75, height: w * 0.55, fit: BoxFit.contain),
              ),
              const SizedBox(height: 16),
              _input(_email, 'Email'),
              const SizedBox(height: 12),
              _input(_pass, 'Password',
                  obscure: _obsc1,
                  suffix: IconButton(
                      icon: Icon(_obsc1 ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() => _obsc1 = !_obsc1))),
              const SizedBox(height: 12),
              _input(_confirm, 'Konfirmasi Password',
                  obscure: _obsc2,
                  suffix: IconButton(
                      icon: Icon(_obsc2 ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() => _obsc2 = !_obsc2))),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _loading ? null : _register,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: _loading
                    ? const SizedBox(
                        height: 20, width: 20, child: CircularProgressIndicator())
                    : const Text('Mendaftar'),
              ),
              const SizedBox(height: 16),
              Row(children: [
                Expanded(child: Divider(color: Colors.grey.shade400)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Atau daftar menggunakan',
                      style: TextStyle(color: Colors.grey.shade600)),
                ),
                Expanded(child: Divider(color: Colors.grey.shade400)),
              ]),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: _registerGoogle,
                icon: Image.asset('assets/google.png', width: 22, height: 22),
                label: const Text('Google'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  side: const BorderSide(color: Color(0xFFE53935), width: 1.4),
                  foregroundColor: const Color(0xFFE53935),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun? '),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(context, '/login'),
                    child: const Text('masuk',
                        style: TextStyle(
                            color: Color(0xFF1976D2), fontWeight: FontWeight.w600)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _input(TextEditingController c, String hint,
      {bool obscure = false, Widget? suffix}) {
    return TextField(
      controller: c,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        suffixIcon: suffix,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
