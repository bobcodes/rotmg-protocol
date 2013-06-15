package zijyq
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Animations extends Object
   {
      public function Animations(param1:Zoq) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.pacuhyqa=param1;
         return;
      }

      public var pacuhyqa:Zoq;

      public var kuwoq:Vector.<int> = null;

      public var jopoqoba:RunningAnimation = null;

      public function getTexture(param1:int) : BitmapData {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Tif = null;
         var _loc4_:BitmapData = null;
         var _loc5_:* = 0;
         if(this.kuwoq==null)
         {
            this.kuwoq=new Vector.<int>();
            for each (_loc2_ in this.pacuhyqa.fyvub)
            {
               this.kuwoq.push(_loc2_.zityl(param1));
            }
         }
         if(this.jopoqoba!=null)
         {
            _loc4_=this.jopoqoba.getTexture(param1);
            if(_loc4_!=null)
            {
               return _loc4_;
            }
            this.jopoqoba=null;
         }
         var _loc3_:* = 0;
         while(_loc3_<this.kuwoq.length)
         {
            if(param1>this.kuwoq[_loc3_])
            {
               _loc5_=this.kuwoq[_loc3_];
               _loc2_=this.pacuhyqa.fyvub[_loc3_];
               this.kuwoq[_loc3_]=_loc2_.vedasone(param1);
               if(!(_loc2_.baba==1)&&Math.random()>_loc2_.baba)
               {
               }
               else
               {
                  this.jopoqoba=new RunningAnimation(_loc2_,_loc5_);
                  return this.jopoqoba.getTexture(param1);
               }
            }
            _loc3_++;
         }
         return null;
      }
   }

}   import zijyq.Tif;
   import flash.display.BitmapData;
   import zijyq.Caleso;


   class RunningAnimation extends Object
   {
      function RunningAnimation(param1:Tif, param2:int) {
         super();
         this.animationData_=param1;
         this.start_=param2;
         this.frameId_=0;
         this.frameStart_=param2;
         this.texture_=null;
         return;
      }

      public var animationData_:Tif;

      public var start_:int;

      public var frameId_:int;

      public var frameStart_:int;

      public var texture_:BitmapData;

      public function getTexture(param1:int) : BitmapData {
         var _loc2_:Caleso = this.animationData_.gasycal[this.frameId_];
         while(param1-this.frameStart_>_loc2_.time_)
         {
            if(this.frameId_>=this.animationData_.gasycal.length-1)
            {
               return null;
            }
            this.frameStart_=this.frameStart_+_loc2_.time_;
            this.frameId_++;
            _loc2_=this.animationData_.gasycal[this.frameId_];
            this.texture_=null;
         }
         if(this.texture_==null)
         {
            this.texture_=_loc2_.mor.getTexture(Math.random()*100);
         }
         return this.texture_;
      }
   }
