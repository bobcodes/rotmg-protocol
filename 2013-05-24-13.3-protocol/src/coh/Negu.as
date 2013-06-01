package coh
{
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import tulunyno.Hugyqufyq;
   import tulunyno.Sabudaweb;
   import qazoz.Nyzur;
   import movimet.Lufub;
   import com.company.assembleegameclient.util.Currency;
   import nec.Sire;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import aaa.rotmg.i18n.I18nKeys;


   public class Negu extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Negu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cafy=new Nyzur("",14,0,Currency.fejubu);
         this.nokupu=new Nyzur("",14,0,Currency.FAME);
         this.kyro=this.honeg();
         this.or=this.honeg().setStringBuilder(new Sire().setParams(I18nKeys.powusofok));
         super();
         this.cafy.addEventListener(MouseEvent.CLICK,this.sol);
         this.nokupu.addEventListener(MouseEvent.CLICK,this.jylokeveqa);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.nokupu.qecysiga.add(this.qenugob);
         this.cafy.qecysiga.add(this.qenugob);
         this.kyro.textChanged.add(this.qenugob);
         return;
      }

      private static const midovem:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.lyheq);

      public const soqifok:Hugyqufyq = new Hugyqufyq();

      public const vuso:Hugyqufyq = new Hugyqufyq(int);

      public const qeq:Hugyqufyq = new Hugyqufyq(int);

      public const siperu:Sabudaweb = new Hugyqufyq();

      public var cafy:Nyzur;

      public var nokupu:Nyzur;

      private const nipa:int = 7;

      private var kyro:Lufub;

      private var or:Lufub;

      private var disabled:Boolean = false;

      public function tyreqar(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.disabled!=param1)
         {
            this.disabled=param1;
            this.cafy.setEnabled(!this.disabled);
            this.nokupu.setEnabled(!this.disabled);
         }
         return;
      }

      public function cunu() : Boolean {
         return this.disabled;
      }

      public function jogojoti(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cafy.setPrice(param1,Currency.fejubu);
         return;
      }

      public function nyqu() : int {
         return this.cafy.ciqunemid();
      }

      public function setPrefix(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kyro.setStringBuilder(new Sire().setParams(param1));
         return;
      }

      public function gatup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      private function qenugob() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(contains(this.cafy))
         {
            this.cafy.x=this.kyro.width+this.nipa;
         }
         if(contains(this.nokupu))
         {
            if(contains(this.cafy))
            {
               this.or.textChanged.addOnce(this.qenugob);
               this.or.x=this.cafy.x+this.cafy.width+this.nipa;
               this.nokupu.x=this.or.x+this.or.width+this.nipa;
            }
            else
            {
               this.nokupu.x=this.kyro.width+this.nipa;
            }
         }
         this.soqifok.dispatch();
         return;
      }

      public function vaqipeca(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nokupu.setPrice(param1,Currency.FAME);
         return;
      }

      public function tidozah() : int {
         return this.nokupu.ciqunemid();
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.cafy.removeEventListener(MouseEvent.CLICK,this.sol);
         this.nokupu.removeEventListener(MouseEvent.CLICK,this.jylokeveqa);
         this.nokupu.qecysiga.remove(this.qenugob);
         this.cafy.qecysiga.remove(this.qenugob);
         this.kyro.textChanged.remove(this.qenugob);
         return;
      }

      private function jylokeveqa(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.disabled)
         {
            this.qeq.dispatch(this.nokupu.price);
            this.siperu.dispatch();
         }
         this.tyreqar(true);
         return;
      }

      private function sol(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.disabled)
         {
            this.vuso.dispatch(this.cafy.price);
            this.siperu.dispatch();
         }
         this.tyreqar(true);
         return;
      }

      private function honeg() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = new Lufub().setSize(16).setColor(11776947).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=3;
         return _loc1_;
      }
   }

}