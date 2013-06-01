package zegacymo
{
[CLASS701]   import nonyna.Frame;
   import tinava.Dab;
   import nonyna.Rutugumen;
   import depyw.DateField;
   import pudev.Capitu;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import flash.events.TextEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.filters.DropShadowFilter;
   import zehus.Kelapu;
   import flash.events.MouseEvent;
   import kyhawibyc.Fapu;
   import com.company.util.Vutem;


   public class Jugec extends Frame
   {
      public function Jugec() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(Kefyfa.begohuh,"RegisterWebAccountDialog.leftButton","RegisterWebAccountDialog.rightButton","/registerAccount",326);
         this.zeguro();
         this.napocys();
         return;
      }

      public var register:Dab;

      public var signIn:Dab;

      public var cancel:Dab;

      private const errors:Array = [];

      private var dytovu:Levozek;

      private var wyhi:Levozek;

      private var menab:Levozek;

      private var checkbox:Rutugumen;

      private var kihus:DateField;

      private var lovamuf:Capitu;

      private var piq:Capitu;

      private var hoqufynuw:String = "</a></font>";

      private function zeguro() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dytovu=new Levozek(Kefyfa.syj,false,275);
         this.wyhi=new Levozek(Kefyfa.rinunuhuw,true,275);
         this.menab=new Levozek(Kefyfa.mizifydy,true,275);
         this.kihus=new DateField();
         this.kihus.setTitle(Kefyfa.keb);
         bapinevy(this.dytovu);
         bapinevy(this.wyhi);
         bapinevy(this.menab);
         nofapyfa(this.kihus,17);
         rucep(35);
         this.checkbox=new Rutugumen(Kefyfa.numimadun,false,12);
         biryhupot(this.checkbox);
         rucep(17);
         this.paqaryjec();
         rucep(17*2);
         this.veleg();
         return;
      }

      public function veleg() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lovamuf=new Capitu();
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\"event:flash.events.TextEvent\">";
         this.lovamuf.setStringBuilder(new Zufi().setParams(Kefyfa.pyfusyb,
            {
               signIn:_loc1_,
               _signIn:this.hoqufynuw
            }
         ));
         this.lovamuf.addEventListener(TextEvent.LINK,this.kyko);
         this.sov(this.lovamuf);
         return;
      }

      public function paqaryjec() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.piq=new Capitu();
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.wuz+"\" target=\"_blank\">";
         var _loc2_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.gegu+"\" target=\"_blank\">";
         this.piq.setStringBuilder(new Zufi().setParams(Kefyfa.sadyp,
            {
               tou:_loc1_,
               _tou:this.hoqufynuw,
               policy:_loc2_,
               _policy:this.hoqufynuw
            }
         ));
         this.sov(this.piq);
         return;
      }

      public function sov(param1:Capitu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.setSize(12).setColor(11776947).setBold(true);
         param1.setTextWidth(275);
         param1.setMultiLine(true).setWordWrap(true).setHTML(true);
         param1.filters=[new DropShadowFilter(0,0,0)];
         addChild(param1);
         positionText(param1);
         return;
      }

      private function kyko(param1:TextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.signIn.dispatch();
         return;
      }

      private function napocys() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cancel=new Kelapu(mycip,MouseEvent.CLICK);
         mibyruji.addEventListener(MouseEvent.CLICK,this.qare);
         this.register=new Dab(Fapu);
         this.signIn=new Dab();
         return;
      }

      private function qare(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = this.bamijog();
         this.dogywybiv();
         if(_loc2_)
         {
            this.myvul();
         }
         return;
      }

      private function bamijog() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errors.length=0;
         var _loc1_:* = true;
         _loc1_=(this.winuf())&&(_loc1_);
         _loc1_=(this.jycypine())&&(_loc1_);
         _loc1_=(this.mynafezi())&&(_loc1_);
         _loc1_=(this.isAgeVerified())&&(_loc1_);
         _loc1_=(this.cohoputam())&&(_loc1_);
         return _loc1_;
      }

      private function isAgeVerified() : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = Qebamuten.masyk(this.kihus);
         var _loc2_:* = _loc1_>=13;
         this.kihus.mibaqe(!_loc2_);
         if(!_loc2_)
         {
            this.errors.push(Kefyfa.sedeha);
         }
         return _loc2_;
      }

      private function cohoputam() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.kihus.losomuwi();
         this.kihus.mibaqe(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Kefyfa.nata);
         }
         return _loc1_;
      }

      private function winuf() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = Vutem.hil(this.dytovu.text());
         this.dytovu.mibaqe(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Kefyfa.cudi);
         }
         return _loc1_;
      }

      private function jycypine() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.wyhi.text().length>=5;
         this.wyhi.mibaqe(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Kefyfa.vagi);
         }
         return _loc1_;
      }

      private function mynafezi() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.wyhi.text()==this.menab.text();
         this.menab.mibaqe(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Kefyfa.fys);
         }
         return _loc1_;
      }

      public function dogywybiv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.errors.length==0)
         {
            this.bakuwi();
         }
         else
         {
            this.nijeqerel(this.errors.length==1?this.errors[0]:Kefyfa.sebude);
         }
         return;
      }

      public function moputyrop(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nijeqerel(param1);
         return;
      }

      private function bakuwi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         danypifev.setStringBuilder(new Zufi().setParams(Kefyfa.begohuh));
         danypifev.setColor(11776947);
         return;
      }

      private function nijeqerel(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         danypifev.setStringBuilder(new Zufi().setParams(param1));
         danypifev.setColor(16549442);
         return;
      }

      private function myvul() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Fapu = new Fapu();
         _loc1_.username=this.dytovu.text();
         _loc1_.password=this.wyhi.text();
         _loc1_.gokumijyp=this.checkbox.wys()?1:0;
         this.register.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}