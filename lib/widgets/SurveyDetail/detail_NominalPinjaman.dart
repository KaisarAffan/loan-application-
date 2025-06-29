import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_application/views/SurveyDetail/inqury_survey_controller.dart';
import 'package:loan_application/widgets/SurveyDetail/field_readonly.dart';

class LoanAngkaPinjaman extends StatelessWidget {
  final SurveyController controller = Get.find<SurveyController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Check if inquiryModel is available
      final inquiryData = controller.inquiryModel.value;
      if (inquiryData == null) {
        return const SizedBox
            .shrink(); // Or display a placeholder/loading state
      }

      return Column(
        children: [
          FieldReadonly(
            label: 'Jumlah Yang Di Pinjam',
            width: double.infinity,
            height: 50,
            value:
                'Rp. ${controller.formatRupiah(inquiryData.application.plafond.toString())}',
            keyboardType: TextInputType.number,
          ),
          FieldReadonly(
            label: 'Taksiran Nilai Jaminan',
            width: double.infinity,
            height: 50,
            value:
                'Rp. ${controller.formatRupiah(inquiryData.collateral.value.toString())}',
            keyboardType: TextInputType.number,
          ),
          FieldReadonly(
            label: 'Pendapatan Bulanan',
            width: double.infinity,
            height: 50,
            value:
                'Rp. ${controller.formatRupiah(inquiryData.additionalInfo.income.toString())}',
            keyboardType: TextInputType.number,
          ),
          FieldReadonly(
            label: 'Total Aset',
            width: double.infinity,
            height: 50,
            value:
                'Rp. ${controller.formatRupiah(inquiryData.additionalInfo.asset.toString())}',
            keyboardType: TextInputType.number,
          ),
          FieldReadonly(
            label: 'Pengeluaran Perbulan',
            width: double.infinity,
            height: 50,
            value:
                'Rp. ${controller.formatRupiah(inquiryData.additionalInfo.expenses.toString())}',
            keyboardType: TextInputType.number,
          ),
          FieldReadonly(
            label: 'Angsuran Perbulan',
            width: double.infinity,
            height: 50,
            value:
                'Rp. ${controller.formatRupiah(inquiryData.additionalInfo.installment.toString())}',
            keyboardType: TextInputType.number,
          ),
        ],
      );
    });
  }
}
