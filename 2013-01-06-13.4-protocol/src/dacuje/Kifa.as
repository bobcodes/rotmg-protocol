package dacuje
{
[CLASS207]   import tysenyzy.Zovisis;
   import kirofyny.Zaqylisot;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import kirofyny.Mary;
   import kirofyny.Giry;
   import kirofyny.Ladej;
   import flash.display.Sprite;


   public class Kifa extends Zovisis
   {
      public function Kifa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Vamusu;

      public var pygipepeg:Zaqylisot;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      public var hat:Mary;

      public var niwagumu:Giry;

      public var sewis:Ladej;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hat.add(this.rafepez);
         this.lyhog.add(this.byvifan);
         this.pygipepeg.add(this.wijoles);
         this.madeve.add(this.japes);
         this.niwagumu.add(this.soqygeriq);
         this.sewis.add(this.pavebofi);
         return;
      }

      private function soqygeriq(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.push(param1);
         return;
      }

      private function pavebofi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pop();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hat.remove(this.rafepez);
         this.lyhog.remove(this.byvifan);
         this.pygipepeg.remove(this.wijoles);
         this.madeve.remove(this.japes);
         this.niwagumu.remove(this.soqygeriq);
         this.sewis.remove(this.pavebofi);
         return;
      }

      private function rafepez(param1:int=1381653) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.henefozom(param1);
         return;
      }

      private function byvifan(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1,true);
         return;
      }

      private function wijoles(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1,false);
         return;
      }

      private function japes() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.stage.focus=null;
         this.view.sedyne();
         return;
      }
   }
[/CLASS]
}