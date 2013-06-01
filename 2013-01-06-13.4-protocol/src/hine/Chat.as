package hine
{
[CLASS875]   import flash.display.Sprite;
   import setuv.Tufyz;


   public class Chat extends Sprite
   {
      public function Chat() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.list=new Myr();
         addChild(this.list);
         return;
      }

      private var list:Myr;

      private var input:Ficezelum;

      private var model:Tufyz;

      public function setup(param1:Tufyz, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.model=param1;
         this.y=600-param1.mykubowob.height;
         this.list.y=param1.mykubowob.height;
         if(param2)
         {
            this.fabegugal();
         }
         else
         {
            this.woqele();
         }
         return;
      }

      private function fabegugal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.input=new Ficezelum();
         addChild(this.input);
         return;
      }

      private function woqele() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Fypefugyz = new Fypefugyz();
         addChild(_loc1_);
         this.list.y=this.model.mykubowob.height-this.model.dud;
         return;
      }
   }
[/CLASS]
}