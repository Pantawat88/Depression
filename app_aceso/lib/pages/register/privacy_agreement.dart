import 'package:app_aceso/pages/login.dart';
import 'package:app_aceso/pages/register/personal_information.dart';
import 'package:app_aceso/pages/widget/widget_button.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';

class Agreement extends StatefulWidget {
  const Agreement({super.key});

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  bool _isChecked = false; //เก็บค่า Checkbox ไว้เช็คตอนกดไม่กด

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Iclear,
                color: APrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => WelcomeLogin()),
                  );
                },
              ),
            ),
            Text(
              'นโยบายความเป็นส่วนตัว',
              style: textHeading,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                color: Color(0xffF8F8FE).withOpacity(0.8),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "นโยบายความเป็นส่วนตัวสำหรับลูกค้า\nบริษัท อเซโซ จำกัด ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคลของคุณ โดยนโยบายความเป็นส่วนตัวฉบับนี้ได้อธิบายแนวปฏิบัติเกี่ยวกับการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคล รวมถึงสิทธิต่าง ๆ ของเจ้าของข้อมูลส่วนบุคคล ตามกฎหมายคุ้มครองข้อมูลส่วนบุคคล\n",
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 12.0,
                          color: Color(0xff464646),
                        ),
                      ),
                      Text(
                        'การเก็บรวบรวมข้อมูลส่วนบุคคล\n'
                        'เราจะเก็บรวบรวมข้อมูลส่วนบุคคลที่ได้รับโดยตรงจากคุณผ่านช่องทาง ดังต่อไปนี้\n'
                        '- การสมัครสมาชิก\n'
                        '- โทรศัพท์\n'
                        '- อีเมล\n\n'
                        'ประเภทข้อมูลส่วนบุคคลที่เก็บรวบรวม\n'
                        'ข้อมูลส่วนบุคคล เช่น ชื่อ นามสกุล อายุ วันเดือนปีเกิด สัญชาติ เลขประจำตัวประชาชน หนังสือเดินทาง เป็นต้น\n'
                        'ข้อมูลการติดต่อ เช่น ที่อยู่ หมายเลขโทรศัพท์ อีเมล เป็นต้น\n'
                        'ข้อมูลบัญชี เช่น บัญชีผู้ใช้งาน ประวัติการใช้งาน เป็นต้น\n'
                        'ขหลักฐานแสดงตัวตน เช่น สำเนาบัตรประจำตัวประชาชน สำเนาหนังสือเดินทาง เป็นต้น\n'
                        'ข้อมูลการทำธุรกรรมและการเงิน เช่น ประวัติการสั่งซื้อ รายละเอียดบัตรเครดิต บัญชีธนาคาร เป็นต้น\n'
                        'ข้อมูลทางเทคนิค เช่น IP address, Cookie ID, ประวัติการใช้งานเว็บไซต์ (Activity Log) เป็นต้น\n'
                        'ข้อมูลอื่น ๆ เช่น รูปภาพ ภาพเคลื่อนไหว และข้อมูลอื่นใดที่ถือว่าเป็นข้อมูลส่วนบุคคลตามกฎหมายคุ้มครองข้อมูลส่วนบุคคล\n\n'
                        'เราจะเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลอ่อนไหว ดังต่อไปนี้ เมื่อเราได้รับความยินยอมโดยชัดแจ้งจากคุณ เว้นแต่กฎหมายกำหนดให้ทำได้\n'
                        '1. เชื้อชาติ\n'
                        'ข้อมูลอื่นใดที่กระทบต่อข้อมูลส่วนบุคคลของคุณตามที่คณะกรรมการคุ้มครองข้อมูลส่วนบุคคลประกาศกำหนด\n\n'
                        'ผู้เยาว์\n'
                        'หากคุณมีอายุต่ำกว่า 20 ปีหรือมีข้อจำกัดความสามารถตามกฎหมาย เราอาจเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณ เราอาจจำเป็นต้องให้พ่อแม่หรือผู้ปกครองของคุณให้ความยินยอมหรือที่กฎหมายอนุญาตให้ทำได้ หากเราทราบว่ามีการเก็บรวบรวมข้อมูลส่วนบุคคลจากผู้เยาว์โดยไม่ได้รับความยินยอมจากพ่อแม่หรือผู้ปกครอง เราจะดำเนินการลบข้อมูลนั้นออกจากเซิร์ฟเวอร์ของเรา\n\n'
                        'วิธีการเก็บรักษาข้อมูลส่วนบุคคล\n'
                        'เราจะเก็บรักษาข้อมูลส่วนบุคคลของคุณในรูปแบบเอกสารและรูปแบบอิเล็กทรอนิกส์\n'
                        'เราเก็บรักษาข้อมูลส่วนบุคคลของคุณ ดังต่อไปนี้\n'
                        '1. ผู้ให้บริการเซิร์ฟเวอร์ในต่างประเทศ\n\n'
                        'การประมวลผลข้อมูลส่วนบุคคล\n'
                        'เราจะเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณเพื่อวัตถุประสงค์ดังต่อไปนี้\n'
                        '1. เพื่อสร้างและจัดการบัญชีผู้ใช้งาน\n'
                        '2. เพื่อจัดส่งสินค้าหรือบริการ\n'
                        '3. เพื่อปรับปรุงสินค้า บริการ หรือประสบการณ์การใช้งาน\n'
                        '4. เพื่อการบริหารจัดการภายในบริษัท\n'
                        '5. เพื่อรวบรวมข้อเสนอแนะ\n'
                        '6. เพื่อปฏิบัติตามข้อตกลงและเงื่อนไข (Terms and Conditions)\n'
                        '7. เพื่อปฏิบัติตามกฎหมายและกฎระเบียบของหน่วยงานราชการ\n\n'
                        'ระยะเวลาจัดเก็บข้อมูลส่วนบุคคล\n'
                        'เราจะเก็บรักษาข้อมูลส่วนบุคคลของคุณไว้ตามระยะเวลาที่จำเป็นในระหว่างที่คุณเป็นลูกค้าหรือมีความสัมพันธ์อยู่กับเราหรือตลอดระยะเวลาที่จำเป็นเพื่อให้บรรลุวัตถุประสงค์ที่เกี่ยวข้องกับนโยบายฉบับนี้ ซึ่งอาจจำเป็นต้องเก็บรักษาไว้ต่อไปภายหลังจากนั้น หากมีกฎหมายกำหนดไว้ เราจะลบ ทำลาย หรือทำให้เป็นข้อมูลที่ไม่สามารถระบุตัวตนของคุณได้ เมื่อหมดความจำเป็นหรือสิ้นสุดระยะเวลาดังกล่าว\n\n'
                        'สิทธิของเจ้าของข้อมูลส่วนบุคคล\n'
                        'ภายใต้กฎหมายคุ้มครองข้อมูลส่วนบุคคล  คุณมีสิทธิในการดำเนินการดังต่อไปนี้\n\n'
                        'สิทธิขอถอนความยินยอม (right to withdraw consent) หากคุณได้ให้ความยินยอม เราจะเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณ ไม่ว่าจะเป็นความยินยอมที่คุณให้ไว้ก่อนวันที่กฎหมายคุ้มครองข้อมูลส่วนบุคคลใช้บังคับหรือหลังจากนั้น คุณมีสิทธิที่จะถอนความยินยอมเมื่อใดก็ได้ตลอดเวลา\n\n'
                        'สิทธิขอเข้าถึงข้อมูล (right to access) คุณมีสิทธิขอเข้าถึงข้อมูลส่วนบุคคลของคุณที่อยู่ในความรับผิดชอบของเราและขอให้เราทำสำเนาข้อมูลดังกล่าวให้แก่คุณ  รวมถึงขอให้เราเปิดเผยว่าเราได้ข้อมูลส่วนบุคคลของคุณมาได้อย่างไร\n\n'
                        'สิทธิขอถ่ายโอนข้อมูล (right to data portability) คุณมีสิทธิขอรับข้อมูลส่วนบุคคลของคุณในกรณีที่เราได้จัดทำข้อมูลส่วนบุคคลนั้นอยู่ในรูปแบบให้สามารถอ่านหรือใช้งานได้ด้วยเครื่องมือหรืออุปกรณ์ที่ทำงานได้โดยอัตโนมัติและสามารถใช้หรือเปิดเผยข้อมูลส่วนบุคคลได้ด้วยวิธีการอัตโนมัติ รวมทั้งมีสิทธิขอให้เราส่งหรือโอนข้อมูลส่วนบุคคลในรูปแบบดังกล่าวไปยังผู้ควบคุมข้อมูลส่วนบุคคลอื่นเมื่อสามารถทำได้ด้วยวิธีการอัตโนมัติ และมีสิทธิขอรับข้อมูลส่วนบุคคลที่เราส่งหรือโอนข้อมูลส่วนบุคคลในรูปแบบดังกล่าวไปยังผู้ควบคุมข้อมูลส่วนบุคคลอื่นโดยตรง เว้นแต่ไม่สามารถดำเนินการได้เพราะเหตุทางเทคนิค\n\n'
                        'สิทธิขอคัดค้าน (right to object)  คุณมีสิทธิขอคัดค้านการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณในเวลาใดก็ได้ หากการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณที่ทำขึ้นเพื่อการดำเนินงานที่จำเป็นภายใต้ประโยชน์โดยชอบด้วยกฎหมายของเราหรือของบุคคลหรือนิติบุคคลอื่น โดยไม่เกินขอบเขตที่คุณสามารถคาดหมายได้อย่างสมเหตุสมผลหรือเพื่อดำเนินการตามภารกิจเพื่อสาธารณประโยชน์\n\n'
                        'สิทธิขอให้ลบหรือทำลายข้อมูล (right to erasure/destruction) คุณมีสิทธิขอลบหรือทำลายข้อมูลส่วนบุคคลของคุณหรือทำให้ข้อมูลส่วนบุคคลเป็นข้อมูลที่ไม่สามารถระบุตัวคุณได้ หากคุณเชื่อว่าข้อมูลส่วนบุคคลของคุณถูกเก็บรวบรวม ใช้ หรือเปิดเผยโดยไม่ชอบด้วยกฎหมายที่เกี่ยวข้องหรือเห็นว่าเราหมดความจำเป็นในการเก็บรักษาไว้ตามวัตถุประสงค์ที่เกี่ยวข้องในนโยบายฉบับนี้ หรือเมื่อคุณได้ใช้สิทธิขอถอนความยินยอมหรือใช้สิทธิขอคัดค้านตามที่แจ้งไว้ข้างต้นแล้ว\n\n'
                        'สิทธิขอให้ระงับการใช้ข้อมูล (right to restriction of processing)  คุณมีสิทธิขอให้ระงับการใช้ข้อมูลส่วนบุคคลชั่วคราวในกรณีที่เราอยู่ระหว่างตรวจสอบตามคำร้องขอใช้สิทธิขอแก้ไขข้อมูลส่วนบุคคลหรือขอคัดค้านของคุณหรือกรณีอื่นใดที่เราหมดความจำเป็นและต้องลบหรือทำลายข้อมูลส่วนบุคคลของคุณตามกฎหมายที่เกี่ยวข้องแต่คุณขอให้เราระงับการใช้แทน\n\n'
                        'สิทธิขอให้แก้ไขข้อมูล (right to rectification)  คุณมีสิทธิขอแก้ไขข้อมูลส่วนบุคคลของคุณให้ถูกต้อง เป็นปัจจุบัน สมบูรณ์ และไม่ก่อให้เกิดความเข้าใจผิด\n\n'
                        'สิทธิร้องเรียน (right to lodge a complaint) คุณมีสิทธิร้องเรียนต่อผู้มีอำนาจตามกฎหมายที่เกี่ยวข้อง หากคุณเชื่อว่าการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณ เป็นการกระทำในลักษณะที่ฝ่าฝืนหรือไม่ปฏิบัติตามกฎหมายที่เกี่ยวข้อง\n\n'
                        'คุณสามารถใช้สิทธิของคุณในฐานะเจ้าของข้อมูลส่วนบุคคลข้างต้นได้ โดยติดต่อมาที่เจ้าหน้าที่คุ้มครองข้อมูลส่วนบุคคลของเราตามรายละเอียดท้ายนโยบายนี้ เราจะแจ้งผลการดำเนินการภายในระยะเวลา 30 วัน นับแต่วันที่เราได้รับคำขอใช้สิทธิจากคุณ ตามแบบฟอร์มหรือวิธีการที่เรากำหนด ทั้งนี้ หากเราปฏิเสธคำขอเราจะแจ้งเหตุผลของการปฏิเสธให้คุณทราบผ่านช่องทางต่าง ๆ เช่น ข้อความ (SMS) อีเมล โทรศัพท์ จดหมาย เป็นต้น\n\n'
                        'การโฆษณาและการตลาด\n'
                        'เราอาจส่งข้อมูลหรือจดหมายข่าวไปยังอีเมลของคุณ โดยมีวัตถุประสงค์เพื่อเสนอสิ่งที่น่าสนกับคุณ หากคุณไม่ต้องการรับการติดต่อสื่อสารจากเราผ่านทางอีเมลอีกต่อไป คุณสามารถกด "ยกเลิกการติดต่อ" ในลิงก์อีเมลหรือติดต่อมายังอีเมลของเราได้\n\n'
                        'เทคโนโลยีติดตามตัวบุคคล (Cookies)\n'
                        'เพื่อเพิ่มประสบการณ์การใช้งานของคุณให้สมบูรณ์และมีประสิทธิภาพมากขึ้น เราใช้คุกกี้ (Cookies)หรือเทคโนโลยีที่คล้ายคลึงกัน เพื่อพัฒนาการเข้าถึงสินค้าหรือบริการ โฆษณาที่เหมาะสม และติดตามการใช้งานของคุณ เราใช้คุกกี้เพื่อระบุและติดตามผู้ใช้งานเว็บไซต์และการเข้าถึงเว็บไซต์ของเรา หากคุณไม่ต้องการให้มีคุกกี้ไว้ในคอมพิวเตอร์ของคุณ คุณสามารถตั้งค่าบราวเซอร์เพื่อปฏิเสธคุกกี้ก่อนที่จะใช้เว็บไซต์ของเราได้\n\n'
                        'การรักษาความมั่งคงปลอดภัยของข้อมูลส่วนบุคคล\n'
                        'เราจะรักษาความมั่นคงปลอดภัยของข้อมูลส่วนบุคคลของคุณไว้ตามหลักการ การรักษาความลับ (confidentiality) ความถูกต้องครบถ้วน (integrity) และสภาพพร้อมใช้งาน (availability) ทั้งนี้ เพื่อป้องกันการสูญหาย เข้าถึง ใช้ เปลี่ยนแปลง แก้ไข หรือเปิดเผย นอกจากนี้เราจะจัดให้มีมาตรการรักษาความมั่นคงปลอดภัยของข้อมูลส่วนบุคคล ซึ่งครอบคลุมถึงมาตรการป้องกันด้านการบริหารจัดการ (administrative safeguard) มาตรการป้องกันด้านเทคนิค (technical safeguard) และมาตรการป้องกันทางกายภาพ (physical safeguard) ในเรื่องการเข้าถึงหรือควบคุมการใช้งานข้อมูลส่วนบุคคล (access control)\n\n'
                        'การแจ้งเหตุละเมิดข้อมูลส่วนบุคคล\n'
                        'ในกรณีที่มีเหตุละเมิดข้อมูลส่วนบุคคลของคุณเกิดขึ้น เราจะแจ้งให้สำนักงานคณะกรรมการคุ้มครองข้อมูลส่วนบุคคลทราบโดยไม่ชักช้าภายใน 72 ชั่วโมง นับแต่ทราบเหตุเท่าที่สามารถกระทำได้ ในกรณีที่การละเมิดมีความเสี่ยงสูงที่จะมีผลกระทบต่อสิทธิและเสรีภาพของคุณ เราจะแจ้งการละเมิดให้คุณทราบพร้อมกับแนวทางการเยียวยาโดยไม่ชักช้าผ่านช่องทางต่าง ๆ เช่น  เว็บไซต์ ข้อความ (SMS) อีเมล โทรศัพท์ จดหมาย เป็นต้น\n\n'
                        'การแก้ไขเปลี่ยนแปลงนโยบายความเป็นส่วนตัว\n'
                        'เราอาจแก้ไขเปลี่ยนแปลงนโยบายนี้เป็นครั้งคราว โดยคุณสามารถทราบข้อกำหนดและเงื่อนไขนโยบายที่มีการแก้ไขเปลี่ยนแปลงนี้ได้ผ่านทางเว็บไซต์ของเรา\n'
                        'นโยบายนี้แก้ไขล่าสุดและมีผลใช้บังคับตั้งแต่วันที่ 13 เมษายน 2566\n\n'
                        'นโยบายความเป็นส่วนตัวของเว็บไซต์อื่น\n'
                        'นโยบายความเป็นส่วนตัวฉบับนี้ใช้สำหรับการเสนอสินค้า บริการ และการใช้งานบนเว็บไซต์สำหรับลูกค้าของเราเท่านั้น หากคุณเข้าชมเว็บไซต์อื่นแม้จะผ่านช่องทางเว็บไซต์ของเรา การคุ้มครองข้อมูลส่วนบุคคลต่าง ๆ จะเป็นไปตามนโยบายความเป็นส่วนตัวของเว็บไซต์นั้น ซึ่งเราไม่มีส่วนเกี่ยวข้องด้วย\n\n'
                        'รายละเอียดการติดต่อ\n'
                        'หากคุณต้องการสอบถามข้อมูลเกี่ยวกับนโยบายความเป็นส่วนตัวฉบับนี้ รวมถึงการขอใช้สิทธิต่าง ๆ คุณสามารถติดต่อเราหรือเจ้าหน้าที่คุ้มครองข้อมูลส่วนบุคคลของเราได้ ดังนี้\n\n'
                        'ผู้ควบคุมข้อมูลส่วนบุคคล\n'
                        'บริษัท อเซโซ จำกัด\n'
                        '(หอพักนักศึกษา สจล.) เลขที่ 1 ลาดกระบัง ลาดกระบัง กรุงเทพมหานคร 10520\n'
                        'อีเมล acesohelp@gmail.com\n'
                        'เว็บไซต์ acesokmitl.com\n\n'
                        'เจ้าหน้าที่คุ้มครองข้อมูลส่วนบุคคล\n'
                        'ทีม DPO\n\n'
                        '(หอพักนักศึกษา สจล.) เลขที่ 1 ลาดกระบัง ลาดกระบัง กรุงเทพมหานคร 10520\n'
                        'อีเมล acesohelp@gmail.com\n',
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 12.0,
                          color: Color(0xff464646),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Color(0xFF606BCB), // กำหนดสีม่วง
                ),
                title: const Text(
                  "ฉันยอมรับนโยบายความเป็นส่วนตัวนี้",
                  style: textnormal,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: ButtonOperation(
                  BTname: 'ถัดไป',
                ),
                onPressed: _isChecked ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            PersonalInformation()),
                  );
                } : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isChecked ? Color(0xFF606BCB) : Colors.grey, // เลือกสีตามเงื่อนไข
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
