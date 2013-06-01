package fumyl
{
[CLASS100]   import flash.display.Sprite;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import gicuzum.Zat;
   import kabam.rotmg.assets.model.Animation;
   import tidi.Dak;
   import totuhare.Zufi;
   import totuhare.Javo;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import kabam.rotmg.assets.services.Dejuceb;


   public class ClassDetailView extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ClassDetailView() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DropShadowFilter = null;
         super();
         this.juwocez.complete.add(this.layout);
         _loc1_=new DropShadowFilter(0,0,0,1,8,8);
         this.sezatisy=new Sprite();
         this.sezatisy.x=(WIDTH-104)*0.5;
         addChild(this.sezatisy);
         this.classNameText=new Capitu().setSize(20).setColor(16777215).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(tur);
         this.classNameText.filters=[_loc1_];
         this.juwocez.push(this.classNameText.textChanged);
         addChild(this.classNameText);
         this.gyg=new Capitu().setSize(14).setColor(16777215).setTextWidth(tur).setWordWrap(true);
         this.gyg.filters=[_loc1_];
         this.juwocez.push(this.gyg.textChanged);
         addChild(this.gyg);
         this.nyfi=new Capitu().setSize(14).setColor(16777215).setBold(true);
         this.nyfi.filters=[_loc1_];
         this.nyfi.setStringBuilder(new Zufi().setParams(Kefyfa.qez));
         this.juwocez.push(this.nyfi.textChanged);
         addChild(this.nyfi);
         this.mikady=new Capitu().setSize(14).setColor(16777215).setBold(true);
         this.mikady.filters=[_loc1_];
         this.mikady.setStringBuilder(new Zufi().setParams(Kefyfa.cejoto));
         this.juwocez.push(this.mikady.textChanged);
         addChild(this.mikady);
         this.fybo=new Capitu().setSize(16).setColor(16777215).setBold(true);
         this.fybo.filters=[_loc1_];
         this.juwocez.push(this.fybo.textChanged);
         addChild(this.fybo);
         this.vyno=new Capitu().setSize(14).setColor(16777215).setBold(true);
         this.vyno.filters=[_loc1_];
         this.vyno.setStringBuilder(new Zufi().setParams(Kefyfa.wuv));
         this.juwocez.push(this.vyno.textChanged);
         addChild(this.vyno);
         this.lenehiw=new Capitu().setSize(16).setColor(15387756).setBold(true);
         this.lenehiw.filters=[_loc1_];
         this.juwocez.push(this.lenehiw.textChanged);
         addChild(this.lenehiw);
         this.numarijed=new Bitmap(Dejuceb.hycejomo());
         this.numarijed.filters=[_loc1_];
         addChild(this.numarijed);
         this.fudigy=new Capitu().setSize(14).setColor(16777215).setBold(true);
         this.fudigy.filters=[_loc1_];
         this.fudigy.setStringBuilder(new Zufi().setParams(Kefyfa.nelote));
         this.fudigy.visible=false;
         addChild(this.fudigy);
         this.bapyni=new Capitu().setSize(14).setColor(16777215);
         this.bapyni.filters=[_loc1_];
         this.bapyni.visible=false;
         addChild(this.bapyni);
         this.buf=new Zat();
         addChild(this.buf);
         return;
      }

      private static const jyhy:int = 205;

      private static const WIDTH:int = 344;

      private static const tur:int = 188;

      private var classNameText:Capitu;

      private var gyg:Capitu;

      private var nyfi:Capitu;

      private var mikady:Capitu;

      private var fybo:Capitu;

      private var vyno:Capitu;

      private var lenehiw:Capitu;

      private var numarijed:Bitmap;

      private var fudigy:Capitu;

      private var bapyni:Capitu;

      private var buf:Zat;

      private var waveh:Boolean;

      private var sezatisy:Sprite;

      private var wonira:Animation;

      private const juwocez:Dak = new Dak();

      public function polaget(param1:String, param2:String, param3:int, param4:int, param5:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.classNameText.setStringBuilder(new Zufi().setParams(param1));
         this.gyg.setStringBuilder(new Zufi().setParams(param2));
         this.fybo.setStringBuilder(new Javo(String(param4)));
         this.lenehiw.setStringBuilder(new Javo(String(param5)));
         return;
      }

      public function kosutahab(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.waveh=!(param2==-1);
         if(this.waveh)
         {
            this.bapyni.setStringBuilder(new Zufi().setParams(Kefyfa.tetak,
               {
                  goal:String(param2),
                  quest:param1
               }
            ));
            this.bapyni.y=this.fudigy.y+this.fudigy.height;
            this.bapyni.x=WIDTH/2-this.bapyni.width/2;
            this.juwocez.push(this.bapyni.textChanged);
            this.juwocez.push(this.fudigy.textChanged);
         }
         return;
      }

      public function wujomyg(param1:Animation) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wonira=param1;
         this.layout();
         return;
      }

      private function sukivyw(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stop();
         this.sezatisy.removeChild(param1);
         return;
      }

      private function viga(param1:Animation) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sezatisy.addChild(param1);
         param1.start();
         return;
      }

      private function layout() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.classNameText.x=WIDTH/2-this.classNameText.width/2;
         this.classNameText.y=110;
         this.gyg.y=this.classNameText.y+this.classNameText.height+5;
         this.gyg.x=WIDTH/2-this.gyg.width/2;
         this.nyfi.y=this.gyg.y+this.gyg.height+20;
         this.nyfi.x=jyhy-this.nyfi.width;
         this.buf.y=this.nyfi.y-2;
         this.buf.x=jyhy+18;
         this.mikady.y=this.nyfi.y+this.nyfi.height+5;
         this.mikady.x=jyhy-this.mikady.width;
         this.fybo.y=this.mikady.y;
         this.fybo.x=jyhy+18;
         this.vyno.y=this.mikady.y+this.mikady.height+5;
         this.vyno.x=jyhy-this.vyno.width;
         this.lenehiw.y=this.vyno.y;
         this.lenehiw.x=jyhy+18;
         this.numarijed.y=this.vyno.y-2;
         this.numarijed.x=this.lenehiw.x+this.lenehiw.width+3;
         this.fudigy.y=this.vyno.y+this.vyno.height+17;
         this.fudigy.x=WIDTH/2-this.fudigy.width/2;
         this.fudigy.visible=this.waveh;
         this.bapyni.y=this.fudigy.y+this.fudigy.height;
         this.bapyni.x=WIDTH/2-this.bapyni.width/2;
         this.bapyni.visible=this.waveh;
         return;
      }
   }
[/CLASS]
}