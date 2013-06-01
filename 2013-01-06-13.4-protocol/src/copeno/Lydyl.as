package copeno
{
[CLASS1146]   import flash.display.Sprite;
   import com.company.assembleegameclient.map.Map;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import com.company.assembleegameclient.map.Fot;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.Vevobeb;


   public class Lydyl extends Sprite
   {
      public function Lydyl(param1:Map) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Nabag = null;
         super();
         this.map_=param1;
         this.tij=new Vector.<Nabag>(Vevobeb.myjeret,true);
         var _loc2_:* = 0;
         while(_loc2_<Vevobeb.myjeret)
         {
            _loc3_=new Nabag();
            this.tij[_loc2_]=_loc3_;
            addChild(_loc3_);
            _loc2_++;
         }
         this.questArrow_=new Fyne(this.map_);
         addChild(this.questArrow_);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var map_:Map;

      public var tij:Vector.<Nabag> = null;

      public var questArrow_:Fyne;

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Wyj.kerepu();
         return;
      }

      public function draw(param1:Fot, param2:int) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc6_:Nabag = null;
         var _loc7_:Player = null;
         var _loc8_:* = 0;
         var _loc9_:Nabag = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         if(this.map_.player_==null)
         {
            return;
         }
         var _loc3_:Vevobeb = this.map_.party_;
         var _loc4_:Player = this.map_.player_;
         var _loc5_:* = 0;
         while(_loc5_<Vevobeb.myjeret)
         {
            _loc6_=this.tij[_loc5_];
            if(_loc6_.dupo)
            {
            }
            else
            {
               if(_loc5_>=_loc3_.cica.length)
               {
                  _loc6_.bicu(null);
               }
               else
               {
                  _loc7_=_loc3_.cica[_loc5_];
                  if((_loc7_.nyz)||_loc7_.map_==null||(_loc7_.cesulo))
                  {
                     _loc6_.bicu(null);
                  }
                  else
                  {
                     _loc6_.bicu(_loc7_);
                     _loc8_=0;
                     while(_loc8_<_loc5_)
                     {
                        _loc9_=this.tij[_loc8_];
                        _loc10_=_loc6_.x-_loc9_.x;
                        _loc11_=_loc6_.y-_loc9_.y;
                        if(_loc10_*_loc10_+_loc11_*_loc11_<64)
                        {
                           if(!_loc9_.dupo)
                           {
                              _loc9_.rybudufo(_loc7_);
                           }
                           _loc6_.bicu(null);
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
         if(!this.questArrow_.dupo)
         {
            this.questArrow_.draw(param2,param1);
         }
         return;
      }
   }
[/CLASS]
}