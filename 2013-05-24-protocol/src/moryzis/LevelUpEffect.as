package moryzis
{
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;


   public class LevelUpEffect extends Jil
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function LevelUpEffect(param1:GameObject, param2:uint, param3:int) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:LevelUpParticle = null;
         this.parts1_=new Vector.<LevelUpParticle>();
         this.parts2_=new Vector.<LevelUpParticle>();
         super();
         this.go_=param1;
         var _loc5_:* = 0;
         while(_loc5_<param3)
         {
            _loc4_=new LevelUpParticle(param2,100);
            this.parts1_.push(_loc4_);
            _loc4_=new LevelUpParticle(param2,100);
            this.parts2_.push(_loc4_);
            _loc5_++;
         }
         return;
      }

      private static const milisetede:int = 2000;

      public var go_:GameObject;

      public var parts1_:Vector.<LevelUpParticle>;

      public var parts2_:Vector.<LevelUpParticle>;

      public var startTime_:int = -1;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.go_.map_==null)
         {
            this.byva();
            return false;
         }
         x_=this.go_.x_;
         y_=this.go_.y_;
         if(this.startTime_<0)
         {
            this.startTime_=param1;
         }
         var _loc3_:Number = (param1-this.startTime_)/milisetede;
         if(_loc3_>=1)
         {
            this.byva();
            return false;
         }
         this.mypeti(this.parts1_,1,0,_loc3_);
         this.mypeti(this.parts2_,1,Math.PI,_loc3_);
         return true;
      }

      private function byva() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:LevelUpParticle = null;
         for each (_loc1_ in this.parts1_)
         {
            _loc1_.alive_=false;
         }
         for each (_loc1_ in this.parts2_)
         {
            _loc1_.alive_=false;
         }
         return;
      }

      public function mypeti(param1:Vector.<LevelUpParticle>, param2:Number, param3:Number, param4:Number) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:* = 0;
         var _loc6_:LevelUpParticle = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         _loc5_=0;
         while(_loc5_<param1.length)
         {
            _loc6_=param1[_loc5_];
            _loc6_.z_=param4*2-1+_loc5_/param1.length;
            if(_loc6_.z_<0)
            {
            }
            else
            {
               if(_loc6_.z_>1)
               {
                  _loc6_.alive_=false;
               }
               else
               {
                  _loc7_=param2*(2*Math.PI*_loc5_/param1.length+2*Math.PI*param4+param3);
                  _loc8_=this.go_.x_+0.5*Math.cos(_loc7_);
                  _loc9_=this.go_.y_+0.5*Math.sin(_loc7_);
                  if(_loc6_.map_==null)
                  {
                     map_.addObj(_loc6_,_loc8_,_loc9_);
                  }
                  else
                  {
                     _loc6_.moveTo(_loc8_,_loc9_);
                  }
               }
            }
            _loc5_++;
         }
         return;
      }
   }

}   import moryzis.Particle;


   class LevelUpParticle extends Particle
   {
      function LevelUpParticle(param1:uint, param2:int) {
         super(param1,0,param2);
         return;
      }

      public var alive_:Boolean = true;

      override public function update(param1:int, param2:int) : Boolean {
         return this.alive_;
      }
   }
