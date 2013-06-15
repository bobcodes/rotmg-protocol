package mybujib
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.map.Map;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.Viz;


   public class Raquke extends Sprite
   {
      public function Raquke(param1:Map) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Wymekuli = null;
         super();
         this.map_=param1;
         this.jegyqezut=new Vector.<Wymekuli>(Viz.foju,true);
         var _loc2_:* = 0;
         while(_loc2_<Viz.foju)
         {
            _loc3_=new Wymekuli();
            this.jegyqezut[_loc2_]=_loc3_;
            addChild(_loc3_);
            _loc2_++;
         }
         this.questArrow_=new Kyhoqofih(this.map_);
         addChild(this.questArrow_);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var map_:Map;

      public var jegyqezut:Vector.<Wymekuli> = null;

      public var questArrow_:Kyhoqofih;

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Kuvybuqec.videhel();
         return;
      }

      public function draw(param1:Qawosiwi, param2:int) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc6_:Wymekuli = null;
         var _loc7_:Player = null;
         var _loc8_:* = 0;
         var _loc9_:Wymekuli = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         if(this.map_.player_==null)
         {
            return;
         }
         var _loc3_:Viz = this.map_.party_;
         var _loc4_:Player = this.map_.player_;
         var _loc5_:* = 0;
         while(_loc5_<Viz.foju)
         {
            _loc6_=this.jegyqezut[_loc5_];
            if(_loc6_.picolumah)
            {
            }
            else
            {
               if(_loc5_>=_loc3_.gopodity.length)
               {
                  _loc6_.byrapywyd(null);
               }
               else
               {
                  _loc7_=_loc3_.gopodity[_loc5_];
                  if((_loc7_.vuci)||_loc7_.map_==null||(_loc7_.logi))
                  {
                     _loc6_.byrapywyd(null);
                  }
                  else
                  {
                     _loc6_.byrapywyd(_loc7_);
                     _loc8_=0;
                     while(_loc8_<_loc5_)
                     {
                        _loc9_=this.jegyqezut[_loc8_];
                        _loc10_=_loc6_.x-_loc9_.x;
                        _loc11_=_loc6_.y-_loc9_.y;
                        if(_loc10_*_loc10_+_loc11_*_loc11_<64)
                        {
                           if(!_loc9_.picolumah)
                           {
                              _loc9_.vagipu(_loc7_);
                           }
                           _loc6_.byrapywyd(null);
                           break;
                        }
                        _loc8_++;
                     }
                     _loc6_.draw(param2,param1);
                  }
               }
            }
            _loc5_++;
         }
         if(!this.questArrow_.picolumah)
         {
            this.questArrow_.draw(param2,param1);
         }
         return;
      }
   }

}