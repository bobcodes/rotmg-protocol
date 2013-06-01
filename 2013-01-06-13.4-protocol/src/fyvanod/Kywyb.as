package fyvanod
{
[CLASS927]   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import tinava.Dab;
   import tinava.Pysu;
   import gicuzum.Caty;
   import pudev.Capitu;
   import com.company.assembleegameclient.util.Currency;
   import totuhare.Zufi;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import haqakel.Kefyfa;


   public class Kywyb extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kywyb() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.refadyvib=new Caty("",14,0,Currency.vusap);
         this.sivil=new Caty("",14,0,Currency.FAME);
         this.qupibi=this.cyholule();
         this.or=this.cyholule().setStringBuilder(new Zufi().setParams(Kefyfa.qolusega));
         super();
         this.refadyvib.addEventListener(MouseEvent.CLICK,this.lege);
         this.sivil.addEventListener(MouseEvent.CLICK,this.jukis);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.sivil.necilywe.add(this.wijasikaz);
         this.refadyvib.necilywe.add(this.wijasikaz);
         this.qupibi.textChanged.add(this.wijasikaz);
         return;
      }

      private static const tipekot:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.calysymes);

      public const wihihula:Dab = new Dab();

      public const rij:Dab = new Dab(int);

      public const bulipy:Dab = new Dab(int);

      public const zokokof:Pysu = new Dab();

      public var refadyvib:Caty;

      public var sivil:Caty;

      private const kaqavi:int = 7;

      private var qupibi:Capitu;

      private var or:Capitu;

      private var disabled:Boolean = false;

      public function pyjeluke(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.disabled!=param1)
         {
            this.disabled=param1;
            this.refadyvib.setEnabled(!this.disabled);
            this.sivil.setEnabled(!this.disabled);
         }
         return;
      }

      public function bepadetof() : Boolean {
         return this.disabled;
      }

      public function sev(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.refadyvib.setPrice(param1,Currency.vusap);
         return;
      }

      public function cygemec() : int {
         return this.refadyvib.jovubyj();
      }

      public function setPrefix(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qupibi.setStringBuilder(new Zufi().setParams(param1));
         return;
      }

      public function raqug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      private function wijasikaz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(contains(this.refadyvib))
         {
            this.refadyvib.x=this.qupibi.width+this.kaqavi;
         }
         if(contains(this.sivil))
         {
            if(contains(this.refadyvib))
            {
               this.or.textChanged.addOnce(this.wijasikaz);
               this.or.x=this.refadyvib.x+this.refadyvib.width+this.kaqavi;
               this.sivil.x=this.or.x+this.or.width+this.kaqavi;
            }
            else
            {
               this.sivil.x=this.qupibi.width+this.kaqavi;
            }
         }
         this.wihihula.dispatch();
         return;
      }

      public function rinocuf(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sivil.setPrice(param1,Currency.FAME);
         return;
      }

      public function zapeza() : int {
         return this.sivil.jovubyj();
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.refadyvib.removeEventListener(MouseEvent.CLICK,this.lege);
         this.sivil.removeEventListener(MouseEvent.CLICK,this.jukis);
         this.sivil.necilywe.remove(this.wijasikaz);
         this.refadyvib.necilywe.remove(this.wijasikaz);
         this.qupibi.textChanged.remove(this.wijasikaz);
         return;
      }

      private function jukis(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.disabled)
         {
            this.bulipy.dispatch(this.sivil.price);
            this.zokokof.dispatch();
         }
         this.pyjeluke(true);
         return;
      }

      private function lege(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.disabled)
         {
            this.rij.dispatch(this.refadyvib.price);
            this.zokokof.dispatch();
         }
         this.pyjeluke(true);
         return;
      }

      private function cyholule() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(16).setColor(11776947).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=3;
         return _loc1_;
      }
   }
[/CLASS]
}