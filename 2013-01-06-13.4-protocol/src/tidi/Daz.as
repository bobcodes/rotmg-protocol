package tidi
{
[CLASS456]   import tysenyzy.Zovisis;
   import qilarag.Nica;
   import foliverad.Popefy;
   import hiraj.Nafy;


   public class Daz extends Zovisis
   {
      public function Daz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Nica;

      public var laruzydo:Popefy;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.sewepija.add(this.vytej);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.sewepija.remove(this.vytej);
         return;
      }

      private function vytej(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.laruzydo.dispatch(new Nafy(this.view.accountId,param1));
         return;
      }
   }
[/CLASS]
}