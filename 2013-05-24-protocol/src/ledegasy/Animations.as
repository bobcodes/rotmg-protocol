package ledegasy
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;


   public class Animations extends Object
   {
      public function Animations(param1:Hiq) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.piba=param1;
         return;
      }

      public var piba:Hiq;

      public var fihetiko:Vector.<int> = null;

      public var gutuq:RunningAnimation = null;

      public function getTexture(param1:int) : BitmapData {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Fukiqi = null;
         var _loc4_:BitmapData = null;
         var _loc5_:* = 0;
         if(this.fihetiko==null)
         {
            this.fihetiko=new Vector.<int>();
            for each (_loc2_ in this.piba.cem)
            {
               this.fihetiko.push(_loc2_.sivoqykek(param1));
            }
         }
         if(this.gutuq!=null)
         {
            _loc4_=this.gutuq.getTexture(param1);
            if(_loc4_!=null)
            {
               return _loc4_;
            }
            this.gutuq=null;
         }
         var _loc3_:* = 0;
         while(_loc3_<this.fihetiko.length)
         {
            if(param1>this.fihetiko[_loc3_])
            {
               _loc5_=this.fihetiko[_loc3_];
               _loc2_=this.piba.cem[_loc3_];
               this.fihetiko[_loc3_]=_loc2_.vuwamyrig(param1);
               if(!(_loc2_.sesiduhu==1)&&Math.random()>_loc2_.sesiduhu)
               {
               }
               else
               {
                  this.gutuq=new RunningAnimation(_loc2_,_loc5_);
                  return this.gutuq.getTexture(param1);
               }
            }
            _loc3_++;
         }
         return null;
      }
   }

}   import ledegasy.Fukiqi;
   import flash.display.BitmapData;
   import ledegasy.Saqavekof;


   class RunningAnimation extends Object
   {
      function RunningAnimation(param1:Fukiqi, param2:int) {
         super();
         this.animationData_=param1;
         this.start_=param2;
         this.frameId_=0;
         this.frameStart_=param2;
         this.texture_=null;
         return;
      }

      public var animationData_:Fukiqi;

      public var start_:int;

      public var frameId_:int;

      public var frameStart_:int;

      public var texture_:BitmapData;

      public function getTexture(param1:int) : BitmapData {
         var _loc2_:Saqavekof = this.animationData_.fivobep[this.frameId_];
         while(param1-this.frameStart_>_loc2_.time_)
         {
            if(this.frameId_>=this.animationData_.fivobep.length-1)
            {
               return null;
            }
            this.frameStart_=this.frameStart_+_loc2_.time_;
            this.frameId_++;
            _loc2_=this.animationData_.fivobep[this.frameId_];
            this.texture_=null;
         }
         if(this.texture_==null)
         {
            this.texture_=_loc2_.nipi.getTexture(Math.random()*100);
         }
         return this.texture_;
      }
   }
