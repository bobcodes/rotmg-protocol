package tegopegyz
{
[CLASS728]   import tysenyzy.Zovisis;
   import sojul.RegisterWebAccountDialog;
   import rysuho.Zubukyby;
   import kirofyny.Tiqimav;
   import kyhawibyc.Fapu;


   public class Kenuru extends Zovisis
   {
      public function Kenuru() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:RegisterWebAccountDialog;

      public var register:Zubukyby;

      public var bycofuvyh:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.qare);
         this.view.cancel.add(this.pikymasa);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.qare);
         return;
      }

      private function qare(param1:Fapu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.register.dispatch(param1);
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bycofuvyh.dispatch();
         return;
      }
   }
[/CLASS]
}