package gabufo
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import zekeqa.Devene;
   import zoqabel.DateField;
   import hivysif.Guzowoja;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import flash.events.TextEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.filters.DropShadowFilter;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;
   import cinyj.Vobewabij;
   import com.company.util.Jyjoburib;


   public class Meqeguru extends Frame
   {
      public function Meqeguru() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Vibemod.gilunysec,"RegisterWebAccountDialog.leftButton","RegisterWebAccountDialog.rightButton","/registerAccount",326);
         this.bajek();
         this.qonugile();
         return;
      }

      public var register:Qanyduk;

      public var signIn:Qanyduk;

      public var cancel:Qanyduk;

      private const errors:Array = [];

      private var sese:Qiwug;

      private var cojy:Qiwug;

      private var vyfodav:Qiwug;

      private var checkbox:Devene;

      private var puciz:DateField;

      private var hujalocyd:Guzowoja;

      private var fes:Guzowoja;

      private var seja:String = "</a></font>";

      private function bajek() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sese=new Qiwug(Vibemod.wiqipujep,false,275);
         this.cojy=new Qiwug(Vibemod.ryzen,true,275);
         this.vyfodav=new Qiwug(Vibemod.mogekyn,true,275);
         this.puciz=new DateField();
         this.puciz.setTitle(Vibemod.zibam);
         meti(this.sese);
         meti(this.cojy);
         meti(this.vyfodav);
         leve(this.puciz,17);
         kufobyb(35);
         this.checkbox=new Devene(Vibemod.nojuti,false,12);
         nemutyzyv(this.checkbox);
         kufobyb(17);
         this.fipo();
         kufobyb(17*2);
         this.viqo();
         return;
      }

      public function viqo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hujalocyd=new Guzowoja();
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\"event:flash.events.TextEvent\">";
         this.hujalocyd.setStringBuilder(new Kybidu().setParams(Vibemod.keb,
            {
               signIn:_loc1_,
               _signIn:this.seja
            }
         ));
         this.hujalocyd.addEventListener(TextEvent.LINK,this.sinany);
         this.wuqyku(this.hujalocyd);
         return;
      }

      public function fipo() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fes=new Guzowoja();
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.dyda+"\" target=\"_blank\">";
         var _loc2_:* = "<font color=\"#7777EE\"><a href=\""+Parameters.dahyhuw+"\" target=\"_blank\">";
         this.fes.setStringBuilder(new Kybidu().setParams(Vibemod.jakanyk,
            {
               tou:_loc1_,
               _tou:this.seja,
               policy:_loc2_,
               _policy:this.seja
            }
         ));
         this.wuqyku(this.fes);
         return;
      }

      public function wuqyku(param1:Guzowoja) : void {
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

      private function sinany(param1:TextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.signIn.dispatch();
         return;
      }

      private function qonugile() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cancel=new Rulavowaz(vuz,MouseEvent.CLICK);
         nuwido.addEventListener(MouseEvent.CLICK,this.mijy);
         this.register=new Qanyduk(Vobewabij);
         this.signIn=new Qanyduk();
         return;
      }

      private function mijy(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = this.cucahol();
         this.vusylak();
         if(_loc2_)
         {
            this.zecuwoja();
         }
         return;
      }

      private function cucahol() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.errors.length=0;
         var _loc1_:* = true;
         _loc1_=(this.lanuqe())&&(_loc1_);
         _loc1_=(this.rojosa())&&(_loc1_);
         _loc1_=(this.raroqyz())&&(_loc1_);
         _loc1_=(this.isAgeVerified())&&(_loc1_);
         _loc1_=(this.vicuba())&&(_loc1_);
         return _loc1_;
      }

      private function isAgeVerified() : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = Dibu.boq(this.puciz);
         var _loc2_:* = _loc1_>=13;
         this.puciz.nis(!_loc2_);
         if(!_loc2_)
         {
            this.errors.push(Vibemod.zygavonud);
         }
         return _loc2_;
      }

      private function vicuba() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = this.puciz.dacuceja();
         this.puciz.nis(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Vibemod.leregy);
         }
         return _loc1_;
      }

      private function lanuqe() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = Jyjoburib.mag(this.sese.text());
         this.sese.nis(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Vibemod.wogijepew);
         }
         return _loc1_;
      }

      private function rojosa() : Boolean {
         var [OFS3]_loc2_:* = [/OFS]false;
         var [OFS4]_loc3_:* = [/OFS]true;
         var [OFS19]_loc1_:* = [/OFS]this.[OFS8]cojy[/OFS].[OFS11]text[/OFS][OFS11]([/OFS][OFS11])[/OFS].[OFS14]length[/OFS][OFS18]>=[/OFS][OFS16]5[/OFS];
         this.[OFS21]cojy[/OFS].[OFS26]nis[/OFS][OFS26]([/OFS][OFS25]![/OFS][OFS24]_loc1_[/OFS][OFS26])[/OFS];
         if(![OFS30]_loc1_[/OFS])
         {
            this.[OFS36]errors[/OFS].[OFS44]push[/OFS][OFS44]([/OFS][OFS39]Vibemod[/OFS].[OFS41]habosapep[/OFS][OFS44])[/OFS];
         }
         [OFS48]return [/OFS][OFS47]_loc1_[/OFS];
      }

      private function raroqyz() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.cojy.text()==this.vyfodav.text();
         this.vyfodav.nis(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(Vibemod.viwi);
         }
         return _loc1_;
      }

      public function vusylak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.errors.length==0)
         {
            this.qyluv();
         }
         else
         {
            this.wys(this.errors.length==1?this.errors[0]:Vibemod.gemotit);
         }
         return;
      }

      public function vabuleku(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wys(param1);
         return;
      }

      private function qyluv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         tob.setStringBuilder(new Kybidu().setParams(Vibemod.gilunysec));
         tob.setColor(11776947);
         return;
      }

      private function wys(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         tob.setStringBuilder(new Kybidu().setParams(param1));
         tob.setColor(16549442);
         return;
      }

      private function zecuwoja() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vobewabij = new Vobewabij();
         _loc1_.username=this.sese.text();
         _loc1_.password=this.cojy.text();
         _loc1_.badizyhim=this.checkbox.lywyfiro()?1:0;
         this.register.dispatch(_loc1_);
         return;
      }
   }

}