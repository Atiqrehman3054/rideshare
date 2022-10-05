import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeWidget extends StatelessWidget {
  const CodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        SizedBox(
          height: 60.h,
          width: 40.w,
          child: TextFormField(
           style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
           // cursorColor: Colors.cyan,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder (
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black54,
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black54,
                  )
              ),
              border: OutlineInputBorder(),
              counterText: '',
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        );
  }
}
