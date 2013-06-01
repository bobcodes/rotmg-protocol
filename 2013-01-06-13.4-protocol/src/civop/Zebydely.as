package civop
{
[CLASS483]   import tysenyzy.Zovisis;
   import nonyna.CreateGuildFrame;
   import kirofyny.Tiqimav;


   public class Zebydely extends Zovisis
   {
      public function Zebydely() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CreateGuildFrame;

      public var madeve:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.add(this.pikymasa);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.pikymasa);
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.madeve.dispatch();
         return;
      }
   }
[/CLASS]
}