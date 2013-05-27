package ceny
{
   import flash.display.Sprite;
   import pepyca.Fifu;


   public class Chat extends Sprite
   {
      public function Chat() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.list=new Zelyly();
         addChild(this.list);
         return;
      }

      private var list:Zelyly;

      private var input:Lazegi;

      private var model:Fifu;

      public function setup(param1:Fifu, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.model=param1;
         this.y=600-param1.cucivizyw.height;
         this.list.y=param1.cucivizyw.height;
         if(param2)
         {
            this.vabew();
         }
         else
         {
            this.qiha();
         }
         return;
      }

      private function vabew() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.input=new Lazegi();
         addChild(this.input);
         return;
      }

      private function qiha() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hulocucum = new Hulocucum();
         addChild(_loc1_);
         this.list.y=this.model.cucivizyw.height-this.model.qocalopag;
         return;
      }
   }

}