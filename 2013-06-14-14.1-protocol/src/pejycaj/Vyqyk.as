package pejycaj
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import bemav.Pejemewe;
   import wohy.Caki;
   import typoc.Size;


   public class Vyqyk extends Sprite
   {
      public function Vyqyk() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.poqaqih=new Vector.<DisplayObject>(this.luqac);
         this.racyg=new Pejemewe();
         super();
         var _loc1_:* = 0;
         while(_loc1_<this.luqac)
         {
            this.poqaqih[_loc1_]=new ArenaLeaderboardListItem();
            _loc1_++;
         }
         this.racyg.setSize(new Size(786,400));
         addChild(this.racyg);
         return;
      }

      private const luqac:int = 20;

      private var poqaqih:Vector.<DisplayObject>;

      private var racyg:Pejemewe;

      public function setItems(param1:Vector.<Caki>, param2:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Caki = null;
         var _loc5_:ArenaLeaderboardListItem = null;
         var _loc3_:* = 0;
         while(_loc3_<this.poqaqih.length)
         {
            _loc4_=_loc3_<param1.length?param1[_loc3_]:null;
            _loc5_=this.poqaqih[_loc3_] as ArenaLeaderboardListItem;
            _loc5_.apply(_loc4_,param2);
            _loc3_++;
         }
         this.racyg.setItems(this.poqaqih);
         return;
      }
   }

}