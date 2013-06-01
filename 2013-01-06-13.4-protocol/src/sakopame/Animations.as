package sakopame
{
[CLASS1401]   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Animations extends Object
   {
      public function Animations(param1:Kykike) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.fily=param1;
         return;
      }

      public var fily:Kykike;

      public var dac:Vector.<int> = null;

      public var qiv:RunningAnimation = null;

      public function getTexture(param1:int) : BitmapData {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Giryqohe = null;
         var _loc4_:BitmapData = null;
         var _loc5_:* = 0;
         if(this.dac==null)
         {
            this.dac=new Vector.<int>();
            for each (_loc2_ in this.fily.focagymec)
            {
               this.dac.push(_loc2_.guj(param1));
            }
         }
         if(this.qiv!=null)
         {
            _loc4_=this.qiv.getTexture(param1);
            if(_loc4_!=null)
            {
               return _loc4_;
            }
            this.qiv=null;
         }
         var _loc3_:* = 0;
         while(_loc3_<this.dac.length)
         {
            if(param1>this.dac[_loc3_])
            {
               _loc5_=this.dac[_loc3_];
               _loc2_=this.fily.focagymec[_loc3_];
               this.dac[_loc3_]=_loc2_.dyje(param1);
               if(!(_loc2_.numywavus==1)&&Math.random()>_loc2_.numywavus)
               {
               }
               else
               {
                  this.qiv=new RunningAnimation(_loc2_,_loc5_);
                  return this.qiv.getTexture(param1);
               }
            }
            _loc3_++;
         }
         return null;
      }
   }
[/CLASS]
}[CLASS1402]   import sakopame.Giryqohe;
   import flash.display.BitmapData;
   import sakopame.Jokyhaqob;


   class RunningAnimation extends Object
   {
      function RunningAnimation(param1:Giryqohe, param2:int) {
         super();
         this.animationData_=param1;
         this.start_=param2;
         this.frameId_=0;
         this.frameStart_=param2;
         this.texture_=null;
         return;
      }

      public var animationData_:Giryqohe;

      public var start_:int;

      public var frameId_:int;

      public var frameStart_:int;

      public var texture_:BitmapData;

      public function getTexture(param1:int) : BitmapData {
         var _loc2_:Jokyhaqob = this.animationData_.jutijiwyn[this.frameId_];
         while(param1-this.frameStart_>_loc2_.time_)
         {
            if(this.frameId_>=this.animationData_.jutijiwyn.length-1)
            {
               return null;
            }
            this.frameStart_=this.frameStart_+_loc2_.time_;
            this.frameId_++;
            _loc2_=this.animationData_.jutijiwyn[this.frameId_];
            this.texture_=null;
         }
         if(this.texture_==null)
         {
            this.texture_=_loc2_.welerago.getTexture(Math.random()*100);
         }
         return this.texture_;
      }
   }
[/CLASS]