package wenono
{
   import tytojonib.Kyjefe;
   import noniq.Cysekyrow;
   import lemugo.Wokycuku;
   import jovurora.Divoceve;


   public class Citude extends Kyjefe
   {
      public function Citude() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Cysekyrow;

      public var model:Wokycuku;

      public var servers:Divoceve;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.initialize(this.model,this.servers.netil());
         return;
      }
   }

}