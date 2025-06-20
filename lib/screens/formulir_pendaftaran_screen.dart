import 'package:flutter/material.dart';

class FormulirPendaftaranScreen extends StatefulWidget {
  const FormulirPendaftaranScreen({super.key});

  @override
  State<FormulirPendaftaranScreen> createState() =>
      _FormulirPendaftaranScreenState();
}

class _FormulirPendaftaranScreenState extends State<FormulirPendaftaranScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  String? _selectedPackage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Formulir Pendaftaran',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF00B894),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE8F5E9), Color(0xFFB2DFDB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white.withOpacity(0.9),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Isi Formulir Anda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF005B63),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildInput(
                    controller: _nameController,
                    label: 'Nama Lengkap',
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 16),
                  _buildInput(
                    controller: _phoneController,
                    label: 'Nomor Telepon',
                    icon: Icons.phone,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Paket Perjalanan',
                      prefixIcon: const Icon(Icons.card_travel),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    value: _selectedPackage,
                    onChanged: (value) =>
                        setState(() => _selectedPackage = value),
                    items: const [
                      DropdownMenuItem(
                        value: 'Haji Reguler',
                        child: Text('Haji Reguler'),
                      ),
                      DropdownMenuItem(
                        value: 'Haji Plus',
                        child: Text('Haji Plus'),
                      ),
                      DropdownMenuItem(value: 'Umrah', child: Text('Umrah')),
                    ],
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00B894),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Pendaftaran dikirim!')),
                      );
                    },
                    child: const Text(
                      'Daftar Sekarang',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInput({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
