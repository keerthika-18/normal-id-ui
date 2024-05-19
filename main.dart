import 'package:flutter/material.dart';

void main() {
  runApp(Ninja());
}
class Ninja extends StatefulWidget {
  const Ninja({super.key});

  @override
  State<Ninja> createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                count+=1;
              });
            },child:Icon(Icons.add),),

        backgroundColor: Colors.grey[400],
        appBar: AppBar(
        backgroundColor: Colors.grey[600],
        centerTitle: true,
        title: Text(
        'Ninja ID Card',
        style: TextStyle(color: Colors.white),
    ),
    ),
    body: Column(
    children: [
    SizedBox(height: 20.0),
    CircleAvatar(
    radius: 40.0,
    backgroundImage: NetworkImage(
    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAIwAyQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAgMFBgcBAAj/xABGEAABAgMEBwQHBQYEBwEAAAACAQMABBIFESEiBhMxMkFRYUJScZEUI2KBocHwFSQzgrEHQ3LR4fFTkqKyJjRUVWODkxb/xAAaAQADAQEBAQAAAAAAAAAAAAADBAUCAQAG/8QALhEAAgIBBAICAQIEBwAAAAAAAQIAAxEEEiExBUETUWEiMhRSgcEGFSMzQnGR/9oADAMBAAIRAxEAPwDTpOy5SUkPQmmvUUqJCXG/bfzilt6JPtW76MH/ACJDXXyS/d8Y0VAKEklMPV3shOPci2Uo+ARBiFqXlhZEctNwj0gYHiAMi0j3aYKmgrzd2A746gyOZ9DoqajV0D9wpmY1uU96HkSA2kVHezBiF2ao4wweIR6xX/tgcxExVqS/1eECLB0MLLAm7UPsx5WA7kbyPjrryGVs/iKs86HfZ7USE2tTYr7UBANIUhERpJpHI6PyusmyzF+G0O8a9OSdYGy7mzHtHo/grVc8juTBmAbxQCektiy9Lb1qyQls/FH+cY1pPpZPWtVrSJtjssCVwp48VXqvwirJNPu7g5aqaqePKMM49TV9PynufTbFoSc2FUtNMvD/AOM0Lb4Q6Ew0Z6usausfOVnz8zImLkpOEw77PzSCy0ktr0knztFwiIu1s9ycI8rIe4oNG2/k8T6HQmtmsGOGhB7Qxm2h+mP2gYyVoUi+X4ZcD6eMaHIuEYE3TVGigxuByIfUaJFr3oYRARB6OZZipLyg1Up3o4Q1BHAcSaS20rEuOEwyyRbqLm5wpp9uaIsuUePGOTrROMX1bN0R4r1hUs192po1ZbCjPG3PuNjdggjjAxAzMa3G+8ikMZ2SRdNIi1DbBk/qaXLiPkipFfZOxpiZGUlW5iYeIrqsfeq9Ip6U7F3fch6qve4GQJOWQUtZ9mt611sSIa3MUhmzLZl56bf1Z7xIDQcSRNq+ECaR2RKSlkOuNNVFhmK9bsYqlnThWfODMNCJEN+91jSUparODyY8/l/gsSsqAo7mma8fSNTUNVKLT4/2h6M7mLUfCZlpsCpfpvI+d/BU5QR/+vtDuM+SxltE/GI0nntMc7szR1WOJmyxGPPk77I92EgRBmAoR+I4naVouwq2DcfUknGxKoViLcGk4k5Zz0lvNvDCCl0Q8Y8jbSQYam06R2DDiRE6+/KS2vYlHJgx7I/qvSB9E537Qs4pl38XWlVy93uuiwqKoBCNOI3RFWDZTdkyeoDMREpEXj/SCCwFSPcGdWWu+QjjHUfcnB9NblBL1hXqXREgrjFMOe1VrlN07ri5R5JhBI2++NPqqqSJd7bffcnugzaVuMfUJT5Wlgd5xziTls2kxZUg7NzBZGx3eJLwROqxh9t2q/ac+7aE8XrXPww4MhwRPrasWLT63ftWZblgL7tL/wCouK/LziivOEetc7oqXv4Qja2P0iUi3HEjbQfJ16n/AHfWEFva0JBhgB5kXVVw/RIsWj2ipTctU6O9/eLZL6HCYDXT3fD+sKm1ep4VN7mRIZBv1QXKzw10nu96L/a2gwgBEGYYodp2V6DM1B2SzDGlsVuJhq2XmSDJE0YugVJCVQkO1F4XRt/7PbaS2rK1pl95ZuB0f0LwWMIlzoCk4suhduFYlttP/unMjw8FRePuwWCVsf2/cHduNRAm8OO0p6yIK0NJJSXeJgyISHey/pBGt1vrKqqsekVjSiTIHhmwHKWUui8IoaelC2Hnx+p1jkHZJ2R0ok6qVmaR7OsSJ1mfE2qgIXB7wlGSqMSmjtoFKTgsEXqHsCHgl/GD26JCCVntJ5RwRW//ALH9LbfK0zKWlxEWBLMXeu5QVoFLDXMv08hq+KxXJiUd9Jf1Q6xptxc/BEvwvWNEsKQCz7NbZGkiLMRDxVY3ftqp2L7ntOLLtQbH9SSn5RudlHJc91wboyu05B+zZspd8cw7pd5OCxplqWiNmyhOkVTnZDmv8oz61CdtJ4npgvWdkuXROkC0AYZz+2a8mK2x/N/aCzM5rbLYZ1Q1N35+MRus9mH3Edl6hMcve5wxr2u9FUBQOJIbdnqanHYbaKvKW8MMzU/LSn474iXd4xFwScCNKShyJLWcdBkPeg4kiAs217PN3JMt1FgIlhE2mfMmaFrUIbkS7RqGtTLnJnUhl9KUL+FYfhJpWEZBwYSZwVVZV71S/rDFoO+iSDrp9kYmrZkSl58nKfVOFf7+KRVNMHaLNFv/ABCQfdtWKtlg+IsPqTtNp92oCH7lLm3SMCLtFA0qGteH2ip8sYcm13frbDcqeqMXKaqSQqYgHqfYjsTWLAb9SOWLK2I0RQpDSf0SkZuznmxLtfSfOLXIW4xNy2vaHLCmCO42SD1C5wckZrprZYgBTIZSi02npYVeokpOp0u0WCJ9eMVjSJ6emGfvD8rSV+Rvoi8ecdUEHMyeRiUxcn+b5Q+hZIZIPXQ62nZOGosJrGiNvtOaPA7NlmYyEXPl8Im2rdsh0PWzI09wh/WMh0fmXQqYqyl2eqbPhE2sVqdtiA+58trNOtN5IHfM0dJCwLQzNan/ANZ3RH2vo2wAMNyVWucLeIr0uRFWKPfErZluTMrMsFMOk4w3flLhfhekHVXU5Vj/AFi5NL8Mg/7lu0WZaGxZiWmxGoSJHhLl/K6Oyc281o2LjCFrBv1faVBvwXygafkfSAKbl3SHWCmSrai8+kSVkg4yDbTwiWXeHh49IG4GCx556h6qmH6QPWJU3XSdOp0iIu8UIiz6SWcx6MUy0Ii4O9TxSKxDlNgdciS9RS1TYMQ42JhSeaG/RGO7D8eg0XlptoZkWXPs8c1OYqsUTpFRlZOZnTdpGomxvKrb4eMX0kSi+EA0Am44ICJOb1PGJ9V+xSMT7G3/AA/TZaGydvsTPLvr+cTdgW+7Zp6t2pyWLs34h4dOkT52YwUs63qxEXBRC93HxgV7R302bqEhZYEUSkRxw4wR7qnBDdSdb4K3S/6tT5xLM0/rQFwKSEhqGGTnC7I0wuUlmpSWFhrdEboEc/EJfaicqqSZU0iJtZrRwBHHTaeDVut1DGX/ALQ2mmpmWbadqEqip5bEx/SNJcWgIybTia1tq97VtoNPXjGrP01NGTp61uRkHGCZUppc8JbB0wpa3vr+sdezmPe/vDkg7RMi54fXxif6jOMmTlh2Rbk3qnHZwvRqVyDdffiiYqi3Jfwi9WHJOy4PsOui56vs7L7sbukO6PGP2ONHdq88V+N8EWa40Bu1ujVSva4LCjtmNquJX7T0WdngyETg0rUAuULet9y33LgiXYc0isTehs5Ih6XMTLmXMWXBcEwuvwjTpaYEHqWiEqr8vHCInTSba+x3e8Vw+aokdVzjE41eTkzLXQ+fw/tCW1zlDjn70frFFhiXX698NRUdw+wS+8kJxYhqoiH0Yl9bOU94ssT8ww7LvE26JCQ9koqaJf0ZkPyv7hBr4l5LR2enZMZlom6SvykS3/pDthWI/aH3kXW22hLLViqqnSLywjghS7T/ABDx90NO4Trub8d4wOu+4ceomXYEJYW6ctKJTDlVHq6MsKv6Qgr9t/5YW77li/VabTkLYQMxuaabnWSZPdL6wisTdlzkuZVtETfZMcfO7ZFo3EG6HBMt0hgldpr66i+t0FWurDIR+DKULZGdICRF3aVh70Cc/wCme/yxemjDdEYcvSNHWH+WfON4oIcOTmBJgkKg5pod6nNHn5dHRp3S4Qn8gzPpX8ioJwpMjlzQ6JkO5DZLjT2o7dj0gpgfHWPqN7Wg5z76xC2j75Zi7MNPSrrW8OSHJRrODhuCPdTisShihhcULM+08QmTQ7bcHMrFqOeiSzrp9kVX3xiNrTHpEy66faJSjVf2lz4yVmaloqjmMg+eK/LzjIHs8cvfKgRqqxrKwWEjSfziP1yjko795KvpV5wLNZHnYRrSaeq/L54wtjImM4M0/Ru1fR7Ka1pUtCSjVSt2Crygtt6yjOrN/E3Ul/jil8VrRW0mvQNRUJCRLV0VecWuVlZkMsu7lhMjBlCsqRzCWZ6TkqnWpVxurLULG3y2xC6SkTshrDqbEnEpbLbx5bInxkXfxJgs3xiraazwhLU1bpJ+ixwcmecgDiVQXdbrS9pMvuWON9qIyWmKPj8cIOl3tb/uhyIjuXH9njAzFsao+y2p/FP5/CNWtGxpG0AEptrMPaHBYxz9nM0QaTsUfvC1Xux+cbsKZIeRiEGJN1YBsBPUjmGG5cKGgERHdQRh1cEjxpQdMe2wbOeZbUggEdRlVzeUL4R0rqYaQaO0X8Md7kPyni7dTZ8lZ9YxFHsjwDmhF2O9mh0UG/2o6ZS0GmOloFZOTFIvchdXtR4nhay7xQPrC/wowMmaIss5VZKS74mG9DhOCGYoiivhd6wM1CL/AOXDOd08ax6PJvQ9LIVe7lEo2TgRyyxa1z9Qizmv3lQ+EOT80TVTbQVFT5XwU2QFu0xHWtMeqdRraIrj1u2Qsp3PyJLstLENn3Mp0hd+07YfozNSo0jyq2frf5RTrRb1Tz7fdJRH3KqRoEhKejssOO/hTAhSXVMV8718lij6QIIWk/RmHXKXnBNUmEBP3Km5W5ErrjOciPdq/SAHC3i7xRMTI+pL+H53LEKaVnV2YTWAbiIkxmZebEperMVPRb9iLGgWLpn6CGotAXG3Ry7qr+kQFk2Y/O610KW2B/elsqTdROK48diRaJeUlZvUPzDDZVD2hRYFcR7haAY5OadsOhqJQXHnyyiDYLeq++I+07BnDsp+0LTL7zTULAlg3/FzX4JFukpGTlDql5Zlsu8LaIvnBM80Lsm6J7pCvlC+8eoxt+5hRLRliSs0x7fdUfgt3yjlu2c7JT5N0lwIeqLjfDEqJQ4DkRTGDJawbQ+z7bk5nssvCfiiEir84+l25lqaASqEfzcNuHOPl4Wa80WaTta356fkSl3XH3ZUk1YDcgoiYLfwxS9FVdt6wVbEAw0HbpxYv59TfJmW3SqKmmAnAADpTuwBK6Szk0FM3ZRShd8XRcH4XKnlBSOa3NvVdqGaTuGcxNdZ/C2bLshcf0jn6wgk7UczfXSPKteYfyjB4c+Y0oXcDnnEUgDfBbLY0ZxGBALONQ5YMbUTDKWUd6rbA3zAaryFVo21NkiIVlrsjHdSEPuNUhUMNRgNGqLA6DuISXye1HFlv5w9Lrre1BGrG+PFyIkdXcjEZ9wKWaKuoc0E3EO9T+WHo8sYL5MBba1jbmjSIXZy9YEmm2zAm6iqLC/684FtTSGRs31JETj44apvanjwSKpM6VT0w9UFLYjfSNPPnBa62PMBuyeDCNIVasyQ1bpCIi8ps088VIel996ePSMntCb9Iedc7ROKVPK/GLDppb79oahgxERHNl4lzXwRF8/CKWAumZEG72usA1NhJ2y1pEKpk9mKcmqwJg+8sNSkgVoTktKNCWb8Qh4Dfivj81SOOslXrA3YtuhLBAy+4AjUWXNxu7vG/Hamy+FN2IwVzJj0NpqWFgBHUCOURvuVNi9br12c/GBbIKtnVh2Sy+HCJO1VKXs12bpISEhylxVcEVed1+1NuMCWOxQbXtDmhZzD1jmSgvdmDSqNka+0VO8qdVxuVL7ufSAUQTnBHs+zE5qqAFuneGntXFeSJurguCbEW/lAhCsZVbTslieqbm2qtpZRxDiuCYot1yYXovKK6mh7oPUtEOYkGqok4X4oqXYYbPKNFWWamN/NsHeBUG8r1TPimCbFh6WlR1zRB0KqpbsSvW+4US64ecEVyIErKLZuhzpvUzbpZbxIRu4Lil6fKLpZlmMWeFMu1T3qRiRbZEDIQGnN/T3QwhV7m92eirdd7l2RlmJmgI+3V3aafny89nSCJd0gp7u8X9IFVRDuj2Ry49UTCOEVYVU5S3s2OzGOo7KcgzNtSWLtcZEtDaS8w0KsiVBduG3pbVBUK1QHo/NkdUsQ5RvIfO5fksTWC4RVqtJAM+Z1mjrDlcY+pEx5O9Bsww1qyLdLvdYYGSeMBIVFaoZFgxJZ0V6DeoyPxHBmq2dWWX2oXTDD0mTICREO9sh+r2Yx+n/jK2mbVV1gt7nWDCrLHZp6gKR3lgYnRDL2u1HXm68zX5kj20ZyZ3WVWIhZR31EtvuD2quiwU3MiSd3xgG6OXQQoDIiamys4Mzm1pgpi1Zl46czhbuzBbk+CJA8XSY0akXXtYGsb7wiWH9ICnpOWlKm5drdFM21cVx8Vw+MOLtfgRjT3DdM9tuV9IeEQy9mrptWIV8mpc9U12YmdInyl7Sfr3vpE+CRW5ha3i/3D9YRD1IPykGfYUkfGCPqdfPVU6r8Ut4eEX7RmW9HZ1QUlUSFvX4oqcEx58Yz+TYKbeEd0cP7xrUi0JyzRNfvBrpqTiCKmVPBYVs4hFkbarVfqzHlVs2pjwXDFVghmXEAEWhp9qHbWYreEg3fdl4+Cb2zpDsoFcAYxhBxOtM+iMvzYDUTbZHTTffcl92xdt12zjDMjbrpy0sU60JDNOKAnLt3Ki3oKVIqIhpeuxLlTrEuLRUeqIm3d4SHmnC7ii8oU/TLvC/6G2RCS7tN99S3qmCXqmCreqJ1j0y3cIYEc2qfZKkly61EVLhuRFRUVU54rBDbFEyJH+7JMxEPJETaqrxVcESIxJZqbedI90iTLtwpRFvvxVERLsU49IKCXarqpHdWkafDmnRE9yx7Imdpjw75fXGAQ3xr7qZe8mF/jgl/uWDQ3/rpATO/5bvNb7l2bNt8cnYh1SN4RCqnEiLC9bvDguzxvh9A9ke7vX8tv94E35kq6at3MN/FcE6Jevvvg5tK+77JU/XOPT0XZzgtWlLE6VIkSDTVwVLsbusW6gqSIS45cIpDq58g1fm96RambVI2WyFsRypD+lywKiJanTfKwIEKnmPu1XaHGF2aSejIKdmGJyebclrh3i+EAsvE0VQlDorZkwZ2ugmnb1JCbUXZmmr8MfjCKy5jFfnZ5+aMpaz3REtr812WU2rcuxV6RHf8P/8AeHv/ALlBVp4kXV3IbMZ4Esr4esv9/ugphugIGYVVVEVb7ku8cYNVVWMuSBiM3ao2Vqv4EBdSgyGE7YdmhzXoqpHW2QXbevvjYbiRP4FrriBjEYQhiOn2x1zT4ZuyQ8cdip4L+sTa5broafFFZLDsxpHwcyqvgwvIaYlpug/arroCVOA5hVMdqbcdly+9IhmHWtSJU9qry+kiU06fcOcKolzKpL43X+WzyTlFeeW6zmXEwIypJeaQnrFHySxSNiBfoSTsd4TeJtrLlUt67jd840XR50jkxoKomyUaar9i3olyXX5SXyjLNFCJbUpvVEVkti3co0+wlVq1CZFVodZVxUXG5RIbrvcSxPt7xDIPckZ6XyCPdKkdmxN3avIuCcI9LNUQe6wggiIS0jfcNIomC3JsTkvwSGFXPsTyhb3GVOBDGR9TVTzq4Ycal6piiJjHXk3e1+XbyWngC3bOKx4iVuVIkxVpVEUXZgtyLdz6w5ZwDMesdxKsV2878PCNQZ+4hlod3/E3syrtW7h0RfhHEUq/yqXns4ePHjBiZXkaFLkQBS/jgWECKOdLyVcLsUReKx7E5mNKW9/Cv6JAzSjXV+X4JeKY8cIVMEoNuU9lslT4xXWLdmktIpRAZ1Y33LSt+FXW74RoKTOFgJLy/wDzJfxJlqS4UVEw68PffEkn5v1+vOIxhbn3bkTAyHZyRIlBSpqvYvROt0ZxzgzQORmCuKVe8Lf1/K6JeyU1wE1rcw5vd/e+ItBRXsb19/WD7INftEG0REFRuW7jhf8AKD6awrYIK5iqFh3JI5dzj5wikaCIiGkb6i4JDtqOk1Z8wYXIQtEqL1uisaXPuM2HKtNlcLpIjntYXxbTLYkZ/J3DI+pD6SWq1MAMlZXq5RveERRBNefNU8Yr15d4YfmlpRG03V29YHiggCjAnzzvkz//2Q==',
    ),
    ),
    SizedBox(height: 20.0),
    Text(
    'Name',
    style: TextStyle(color: Colors.grey, fontSize: 20.0),
    ),
    SizedBox(height: 10.0),
    Text(
    'kiki susi',
    style: TextStyle(color: Colors.green[400], fontSize: 24.0),
    ),
    SizedBox(height: 20.0),
    Text(
    'Ninja ID',
    style: TextStyle(color: Colors.grey, fontSize: 20.0),
    ),
    SizedBox(height: 10.0),
    Text(
    '$count',
    style: TextStyle(color: Colors.green[400], fontSize: 24.0),
    ),
    SizedBox(height: 20.0),
    Row(    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.mail),
    SizedBox(width: 20.0),
    Text(
    'kikihuhu@gmail.com',
    style: TextStyle(fontSize: 20.0,color: Colors.green[400],),
    ),

    ],
    )
    ],
    ),),);
  }
}

