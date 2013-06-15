package rulobefuq
{
   import flash.display.DisplayObjectContainer;
   import flash.system.Capabilities;
   import flash.display.LoaderInfo;


   public class Hahukora extends Object
   {
      public function Hahukora() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var platform:Sotoqilon;

      public var root:DisplayObjectContainer;

      private const qeq:String = "Desktop";

      public function wina() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(Capabilities.playerType==this.qeq);
      }

      public function gypypapis() : Boolean {
         return Capabilities.playerType==this.qeq;
      }

      public function tufa() : Sotoqilon {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return platform=(platform)||(this.keholyvel());
      }

      private function keholyvel() : Sotoqilon {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = LoaderInfo(this.root.stage.root.loaderInfo).RotmgParameters;
         if(this.heludu(_loc1_))
         {
            return Sotoqilon.judotyt;
         }
         if(this.qucasuw(_loc1_))
         {
            return Sotoqilon.jyv;
         }
         if(this.fizesize(_loc1_))
         {
            return Sotoqilon.jerer;
         }
         return Sotoqilon.ryrisuh;
      }

      private function heludu(param1:Object) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1.kongregate_api_path==null);
      }

      private function qucasuw(param1:Object) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1.steam_api_path==null);
      }

      private function fizesize(param1:Object) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1.kabam_signed_request==null);
      }
   }

}