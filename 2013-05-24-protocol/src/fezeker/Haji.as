package fezeker
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.map.Map;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.Miv;


   public class Haji extends Sprite
   {
      public function Haji(param1:Map) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Cada = null;
         super();
         this.map_=param1;
         this.pelibi=new Vector.<Cada>(Miv.gupulelaz,true);
         var _loc2_:* = 0;
         while(_loc2_<Miv.gupulelaz)
         {
            _loc3_=new Cada();
            this.pelibi[_loc2_]=_loc3_;
            addChild(_loc3_);
            _loc2_++;
         }
         this.questArrow_=new Cafocas(this.map_);
         addChild(this.questArrow_);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var map_:Map;

      public var pelibi:Vector.<Cada> = null;

      public var questArrow_:Cafocas;

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Hocajicov.vofub();
         return;
      }

      public function draw(param1:Wypyj, param2:int) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc6_:Cada = null;
         var _loc7_:Player = null;
         var _loc8_:* = 0;
         var _loc9_:Cada = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         if(this.map_.player_==null)
         {
            return;
         }
         var _loc3_:Miv = this.map_.party_;
         var _loc4_:Player = this.map_.player_;
         var _loc5_:* = 0;
         while(_loc5_<Miv.gupulelaz)
         {
            _loc6_=this.pelibi[_loc5_];
            if(_loc6_.vefymyjul)
            {
            }
            else
            {
               if(_loc5_>=_loc3_.cotehic.length)
               {
                  _loc6_.linotes(null);
               }
               else
               {
                  _loc7_=_loc3_.cotehic[_loc5_];
                  if((_loc7_.qofeleqir)||_loc7_.map_==null||(_loc7_.hojucope))
                  {
                     _loc6_.linotes(null);
                  }
                  else
                  {
                     _loc6_.linotes(_loc7_);
                     _loc8_=0;
                     while(_loc8_<_loc5_)
                     {
                        _loc9_=this.pelibi[_loc8_];
                        _loc10_=_loc6_.x-_loc9_.x;
                        _loc11_=_loc6_.y-_loc9_.y;
                        if(_loc10_*_loc10_+_loc11_*_loc11_<64)
                        {
                           if(!_loc9_.vefymyjul)
                           {
                              _loc9_.bilebyjud(_loc7_);
                           }
                           _loc6_.linotes(null);
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
         if(!this.questArrow_.vefymyjul)
         {
            this.questArrow_.draw(param2,param1);
         }
         return;
      }
   }

}