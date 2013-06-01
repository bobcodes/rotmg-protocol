package golac
{
[CLASS169]   import tysenyzy.Zovisis;
   import zozimuk.Tukejyp;
   import zozimuk.Zuresasy;
   import ruf.Licid;
   import kuniv.Nogofado;


   public class Lymehe extends Zovisis
   {
      public function Lymehe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var huwumepe:Tukejyp;

      public var view:PackageButton;

      public var wiq:Zuresasy;

      public var wafizozen:Licid;

      private var batyzoqu:Nogofado;

      private var levozyguv:Boolean;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wiq.zyte.add(this.wopatazu);
         this.view.zokokof.add(this.win);
         this.view.init();
         if(this.wiq.qikit())
         {
            this.polaget();
         }
         else
         {
            this.view.visible=false;
            this.huwumepe.start();
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.zokokof.remove(this.win);
         if(this.levozyguv)
         {
            this.batyzoqu.siciwoqu.remove(this.cilomazuv);
            this.batyzoqu.picakocak.remove(this.nev);
            this.batyzoqu.zyte.remove(this.wopatazu);
         }
         return;
      }

      private function nev(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.takaqijem(param1);
         return;
      }

      private function cilomazuv(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<=0)
         {
            this.view.visible=false;
         }
         else
         {
            this.view.lyryfucat(param1);
         }
         return;
      }

      private function wopatazu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=true;
         this.polaget();
         return;
      }

      private function polaget() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.batyzoqu=this.wiq.luvyjimyv();
         this.levozyguv=true;
         this.batyzoqu.siciwoqu.add(this.cilomazuv);
         this.batyzoqu.picakocak.add(this.nev);
         this.view.takaqijem(this.batyzoqu.bavavij());
         this.view.lyryfucat(this.batyzoqu.quantity);
         return;
      }

      private function win() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wafizozen.dispatch(this.wiq.luvyjimyv().packageID);
         return;
      }
   }
[/CLASS]
}