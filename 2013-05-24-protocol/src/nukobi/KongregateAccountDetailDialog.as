package nukobi
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Rucoted;
   import gib.Frame;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import nec.Nara;
   import flash.events.MouseEvent;


   public class KongregateAccountDetailDialog extends Sprite
   {
      public function KongregateAccountDetailDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.gow=new Hugyqufyq();
         this.register=new Hugyqufyq();
         this.link=new Hugyqufyq();
         return;
      }

      public var gow:Hugyqufyq;

      public var register:Hugyqufyq;

      public var link:Hugyqufyq;

      private var gep:Lufub;

      private var vuviry:Lufub;

      private var foguvoj:Lufub;

      private var gygod:Lufub;

      private var wacypeco:Rucoted;

      private var jyjesaqyp:Rucoted;

      public function tepefufe(param1:String, param2:String, param3:Boolean) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Frame = null;
         _loc4_=new Frame(I18nKeys.gowohuta,"",I18nKeys.fupihulo,"/kongregateCurrentLogin");
         addChild(_loc4_);
         this.gep=new Lufub().setSize(18).setColor(11776947);
         this.gep.setBold(true);
         this.gep.setStringBuilder(new Sire().setParams(I18nKeys.gowohuta));
         this.gep.filters=[new DropShadowFilter(0,0,0)];
         this.gep.y=_loc4_.h_-60;
         this.gep.x=17;
         _loc4_.addChild(this.gep);
         this.vuviry=new Lufub().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
         this.vuviry.setStringBuilder(new Nara(param1));
         this.vuviry.y=_loc4_.h_-30;
         this.vuviry.x=17;
         _loc4_.addChild(this.vuviry);
         _loc4_.h_=_loc4_.h_+88;
         if(param3)
         {
            _loc4_.h_=_loc4_.h_-20;
            this.foguvoj=new Lufub().setSize(18).setColor(11776947);
            this.foguvoj.setBold(true);
            this.foguvoj.setStringBuilder(new Sire().setParams(I18nKeys.dagykowa));
            this.foguvoj.filters=[new DropShadowFilter(0,0,0)];
            this.foguvoj.y=_loc4_.h_-60;
            this.foguvoj.x=17;
            _loc4_.addChild(this.foguvoj);
            this.gygod=new Lufub().setSize(16).setColor(11776947).setTextWidth(238).setTextHeight(30);
            this.gygod.setStringBuilder(new Nara(param2));
            this.gygod.y=_loc4_.h_-30;
            this.gygod.x=17;
            _loc4_.addChild(this.gygod);
            _loc4_.h_=_loc4_.h_+88;
         }
         else
         {
            this.wacypeco=new Rucoted(12,false,I18nKeys.tomyjuto);
            this.jyjesaqyp=new Rucoted(12,false,I18nKeys.semoba);
            _loc4_.zuduhujul(this.jyjesaqyp);
            this.wacypeco.addEventListener(MouseEvent.CLICK,this.cydypugoq);
            this.jyjesaqyp.addEventListener(MouseEvent.CLICK,this.onLink);
         }
         _loc4_.dal.addEventListener(MouseEvent.CLICK,this.wefoper);
         return;
      }

      private function wefoper(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gow.dispatch();
         return;
      }

      public function cydypugoq(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.register.dispatch();
         return;
      }

      public function onLink(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.link.dispatch();
         return;
      }
   }

}