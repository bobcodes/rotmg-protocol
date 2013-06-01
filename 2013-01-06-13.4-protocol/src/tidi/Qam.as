package tidi
{
[CLASS474]   import tysenyzy.Zovisis;
   import dec.Tani;
   import dylaqezo.Vusun;
   import wyjimigo.Tykum;


   public class Qam extends Zovisis
   {
      public function Qam() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tani;

      public var model:Vusun;

      public var servers:Tykum;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.initialize(this.model,this.servers.dizanicac());
         return;
      }
   }
[/CLASS]
}