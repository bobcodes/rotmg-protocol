package cicohi
{
   import qov.Kalefu;
   import wegyluke.Nifu;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import wegyluke.Vude;
   import wegyluke.Zef;
   import wegyluke.Rory;
   import flash.display.Sprite;


   public class Cabab extends Kalefu
   {
      public function Cabab() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Hahahi;

      public var pytup:Nifu;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      public var minob:Vude;

      public var maze:Zef;

      public var mucaj:Rory;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.minob.add(this.nikeze);
         this.naval.add(this.wur);
         this.pytup.add(this.zodyhyfog);
         this.tusagecu.add(this.cunid);
         this.maze.add(this.kulab);
         this.mucaj.add(this.hoku);
         return;
      }

      private function kulab(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.push(param1);
         return;
      }

      private function hoku() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pop();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.minob.remove(this.nikeze);
         this.naval.remove(this.wur);
         this.pytup.remove(this.zodyhyfog);
         this.tusagecu.remove(this.cunid);
         this.maze.remove(this.kulab);
         this.mucaj.remove(this.hoku);
         return;
      }

      private function nikeze(param1:int=1381653) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.vope(param1);
         return;
      }

      private function wur(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1,true);
         return;
      }

      private function zodyhyfog(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1,false);
         return;
      }

      private function cunid() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.stage.focus=null;
         this.view.lecy();
         return;
      }
   }

}