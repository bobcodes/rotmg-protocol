package nytifawy
{
   import flash.display.Sprite;
   import pumoc.Zesihag;


   public class Chat extends Sprite
   {
      public function Chat() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         mouseEnabled=false;
         this.list=new Jokerewa();
         addChild(this.list);
         return;
      }

      private var list:Jokerewa;

      private var input:Kyhubydav;

      private var model:Zesihag;

      public function setup(param1:Zesihag, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.model=param1;
         this.y=600-param1.nabo.height;
         this.list.y=param1.nabo.height;
         if(param2)
         {
            this.napov();
         }
         else
         {
            this.wap();
         }
         return;
      }

      private function napov() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.input=new Kyhubydav();
         addChild(this.input);
         return;
      }

      private function wap() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Wojofug = new Wojofug();
         addChild(_loc1_);
         this.list.y=this.model.nabo.height-this.model.vupute;
         return;
      }
   }

}