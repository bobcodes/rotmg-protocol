package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.map.Square;


   public class SpiderWeb extends GameObject
   {
      public function SpiderWeb(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      private var kokolosi:Boolean = false;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!this.kokolosi)
         {
            this.kokolosi=this.qymivufu();
         }
         if(this.kokolosi)
         {
            super.draw(param1,param2,param3);
         }
         return;
      }

      private function qymivufu() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Square = null;
         _loc1_=map_.lookupSquare(x_-1,y_);
         if(!(_loc1_==null)&&_loc1_.obj_ is Wall)
         {
            return true;
         }
         _loc1_=map_.lookupSquare(x_,y_-1);
         if(!(_loc1_==null)&&_loc1_.obj_ is Wall)
         {
            gikasy.setPosition(x_,y_,0,90);
            return true;
         }
         _loc1_=map_.lookupSquare(x_+1,y_);
         if(!(_loc1_==null)&&_loc1_.obj_ is Wall)
         {
            gikasy.setPosition(x_,y_,0,180);
            return true;
         }
         _loc1_=map_.lookupSquare(x_,y_+1);
         if(!(_loc1_==null)&&_loc1_.obj_ is Wall)
         {
            gikasy.setPosition(x_,y_,0,270);
            return true;
         }
         return false;
      }
   }

}