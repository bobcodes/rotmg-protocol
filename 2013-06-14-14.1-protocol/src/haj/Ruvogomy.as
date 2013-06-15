package haj
{
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import mukyrosu.Qanyduk;
   import mukyrosu.Peq;
   import bemav.Telir;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.util.Currency;
   import jediwip.Kybidu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import komi.Vibemod;


   public class Ruvogomy extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Ruvogomy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ryfekecu=new Telir("",14,0,Currency.win);
         this.kazozakil=new Telir("",14,0,Currency.FAME);
         this.resu=this.kyjozysac();
         this.or=this.kyjozysac().setStringBuilder(new Kybidu().setParams(Vibemod.haguvy));
         super();
         this.ryfekecu.addEventListener(MouseEvent.CLICK,this.vysukonum);
         this.kazozakil.addEventListener(MouseEvent.CLICK,this.wif);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.kazozakil.zesi.add(this.fawozuf);
         this.ryfekecu.zesi.add(this.fawozuf);
         this.resu.textChanged.add(this.fawozuf);
         return;
      }

      private static const zylinyh:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.fuguwo);

      public const kenage:Qanyduk = new Qanyduk();

      public const suza:Qanyduk = new Qanyduk(int);

      public const sufujewy:Qanyduk = new Qanyduk(int);

      public const peqe:Peq = new Qanyduk();

      public var ryfekecu:Telir;

      public var kazozakil:Telir;

      private const dysi:int = 7;

      private var resu:Guzowoja;

      private var or:Guzowoja;

      private var disabled:Boolean = false;

      public function sotymojor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.disabled!=param1)
         {
            this.disabled=param1;
            this.ryfekecu.setEnabled(!this.disabled);
            this.kazozakil.setEnabled(!this.disabled);
         }
         return;
      }

      public function cotaq() : Boolean {
         return this.disabled;
      }

      public function rys(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryfekecu.setPrice(param1,Currency.win);
         return;
      }

      public function nina() : int {
         return this.ryfekecu.quwozorap();
      }

      public function setPrefix(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.resu.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }

      public function qep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      private function fawozuf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(contains(this.ryfekecu))
         {
            this.ryfekecu.x=this.resu.width+this.dysi;
         }
         if(contains(this.kazozakil))
         {
            if(contains(this.ryfekecu))
            {
               this.or.textChanged.addOnce(this.fawozuf);
               this.or.x=this.ryfekecu.x+this.ryfekecu.width+this.dysi;
               this.kazozakil.x=this.or.x+this.or.width+this.dysi;
            }
            else
            {
               this.kazozakil.x=this.resu.width+this.dysi;
            }
         }
         this.kenage.dispatch();
         return;
      }

      public function sumubil(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kazozakil.setPrice(param1,Currency.FAME);
         return;
      }

      public function gonyre() : int {
         return this.kazozakil.quwozorap();
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.ryfekecu.removeEventListener(MouseEvent.CLICK,this.vysukonum);
         this.kazozakil.removeEventListener(MouseEvent.CLICK,this.wif);
         this.kazozakil.zesi.remove(this.fawozuf);
         this.ryfekecu.zesi.remove(this.fawozuf);
         this.resu.textChanged.remove(this.fawozuf);
         return;
      }

      private function wif(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.disabled)
         {
            this.sufujewy.dispatch(this.kazozakil.price);
            this.peqe.dispatch();
         }
         this.sotymojor(true);
         return;
      }

      private function vysukonum(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.disabled)
         {
            this.suza.dispatch(this.ryfekecu.price);
            this.peqe.dispatch();
         }
         this.sotymojor(true);
         return;
      }

      private function kyjozysac() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = new Guzowoja().setSize(16).setColor(11776947).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.y=3;
         return _loc1_;
      }
   }

}