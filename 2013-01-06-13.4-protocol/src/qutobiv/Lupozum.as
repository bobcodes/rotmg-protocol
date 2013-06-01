package qutobiv
{
[CLASS230]   import tysenyzy.Zovisis;
   import ruf.Licid;
   import supozuti.Mibopy;
   import gyqadewa.Jycomynig;
   import flash.net.URLRequest;
   import gyqadewa.Byk;
   import flash.net.navigateToURL;


   public class Lupozum extends Zovisis
   {
      public function Lupozum() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Sibu;

      public var wafizozen:Licid;

      public var jizoteq:Mibopy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.civ.add(this.focopowat);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.civ.remove(this.focopowat);
         return;
      }

      private function focopowat(param1:Jycomynig) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:URLRequest = null;
         switch(null)
         {
            case Byk.negiry:
               _loc2_=new URLRequest(param1.linkDetail);
               navigateToURL(_loc2_,"_blank");
               break;
            case Byk.pyzy:
               this.wafizozen.dispatch(int(param1.linkDetail));
               break;
            case Byk.jasewif:
               this.jizoteq.dispatch(param1.linkDetail);
               break;
         }
         return;
      }
   }
[/CLASS]
}