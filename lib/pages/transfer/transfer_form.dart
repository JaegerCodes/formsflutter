import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferForm extends StatefulWidget {
  @override
  _TransferFormState createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  int _currentStep = 0;
  bool isSwitched = false;
  StepperType stepperType = StepperType.horizontal;
  
  Widget destinationFields() => Column(
    children: <Widget>[
      SizedBox(height: 10,),
      TextFormField(
        decoration: InputDecoration(labelText: 'From'),
        style: GoogleFonts.poppins(),
      ),
      SizedBox(height: 20,),
      TextFormField(
        decoration: InputDecoration(labelText: 'To'),
        style: GoogleFonts.poppins(),
      ),
    ],
  );

  Widget transferFields() => Column(
    children: [
      SizedBox(height: 10,),
      TextFormField(
        decoration: InputDecoration(labelText: 'Transfer amount',),
        style: GoogleFonts.poppins(),
      ),
      SizedBox(height: 20,),
      TextFormField(
        decoration: InputDecoration(labelText: 'Date'),
        style: GoogleFonts.poppins(),
      ),
      SizedBox(height: 20,),
      TextFormField(
        decoration: InputDecoration(labelText: 'Transfer Description'),
        style: GoogleFonts.poppins(),
      ),
    ],
  );

  Widget sumarryData() {
    Color color = Colors.grey[350]!;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 30, bottom: 10),
          child: Text('Summary', style: Theme.of(context).textTheme.headline6, ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Save template', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF21252B)),),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.blue,
                activeColor: Colors.blueGrey,
                inactiveThumbColor: Colors.grey[350],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: color,
                  width: 1
                )
              ),
              child: Column(
                children: <Widget> [
                  _crearTexto(
                    context: context,
                    text: 'From:', value: 'Kevin'
                  ),
                  _crearTexto(
                    context: context,
                    text: 'To:', value: 'Luis'
                  ),
                  _crearTexto(
                    context: context,
                    text: 'Transfer amount:', value: 'S/. 8000.00'
                  ),
                  _crearTexto(
                    context: context,
                    text: 'Date:', value: '10/12/2021'
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Forms para Luis'),
          centerTitle: true,
        ),
        body:  Container(
          child: Column(
            children: [
              Expanded(
                child: Stepper(
                  type: stepperType,
                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue:  continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                     Step(
                      title: new Text('Destination', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),),
                      content: destinationFields(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0 ?
                      StepState.complete : StepState.disabled,
                    ),
                     Step(
                      title: new Text('Transfer', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),),
                      content: transferFields(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1 ?
                      StepState.complete : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Finish', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),),
                      content: Column(
                        children: <Widget>[
                          sumarryData(),
                        ],
                      ),
                      isActive:_currentStep >= 0,
                      state: _currentStep >= 2 ?
                      StepState.complete : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.list),
          onPressed: switchStepsType,
        ),

    );
  }
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
        setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
        setState(() => _currentStep -= 1) : null;
  }

  Widget _crearTexto({BuildContext? context, String? text, String? value}) {
    return TextButton(
      onPressed: () {
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //direction: Axis.vertical,
          children: <Widget>[
            Text(
              text??"",
              style: Theme.of(context!).textTheme.subtitle2,
              maxLines: 2,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '$value',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
  
}
