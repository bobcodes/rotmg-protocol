package gykihus
{
   import kyt.Zurucuvy;
   import jag.Giq;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import com.company.assembleegameclient.objects.GameObject;
   import com.hurlant.util.Base64;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.assembleegameclient.objects.BasicObject;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Gypyl extends Object
   {
      public function Gypyl() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static function get sug() : Zurucuvy {
         return Giq.kid().getInstance(Zurucuvy);
      }

      public static function tuqaqa(param1:String) : Map {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Object = sug.parse(param1);
         var _loc3_:Map = new Map(null);
         _loc3_.setProps(_loc2_["width"],_loc2_["height"],_loc2_["name"],_loc2_["back"],false,false);
         _loc3_.initialize();
         geg(_loc2_,_loc3_,0,0);
         return _loc3_;
      }

      public static function vucityt(param1:String, param2:Map, param3:int, param4:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Object = sug.parse(param1);
         geg(_loc5_,param2,param3,param4);
         return;
      }

      public static function wepilyby(param1:String) : IntPoint {
         var _loc2_:Object = sug.parse(param1);
         return new IntPoint(_loc2_["width"],_loc2_["height"]);
      }

      private static function geg(param1:Object, param2:Map, param3:int, param4:int) : void {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:* = 0;
         var _loc12_:Object = null;
         var _loc13_:GameObject = null;
         var _loc5_:ByteArray = Base64.decodeToByteArray(param1["data"]);
         _loc5_.uncompress();
         var _loc6_:Array = param1["dict"];
         _loc7_=param4;
         while(_loc7_<param4+param1["height"])
         {
            _loc8_=param3;
            while(_loc8_<param3+param1["width"])
            {
               _loc9_=_loc6_[_loc5_.readShort()];
               if(_loc8_<0||_loc8_>=param2.width_||_loc7_<0||_loc7_>=param2.height_)
               {
               }
               else
               {
                  if(_loc9_.hasOwnProperty("ground"))
                  {
                     _loc11_=Qezab.tumu[_loc9_["ground"]];
                     param2.setGroundTile(_loc8_,_loc7_,_loc11_);
                  }
                  _loc10_=_loc9_["objs"];
                  if(_loc10_!=null)
                  {
                     for each (_loc12_ in _loc10_)
                     {
                        _loc13_=fag(_loc12_);
                        _loc13_.objectId_=BasicObject.mej();
                        param2.addObj(_loc13_,_loc8_+0.5,_loc7_+0.5);
                     }
                  }
               }
               _loc8_++;
            }
            _loc7_++;
         }
         return;
      }

      public static function fag(param1:Object) : GameObject {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = ObjectLibrary.tumu[param1["id"]];
         var _loc3_:XML = ObjectLibrary.tem[_loc2_];
         var _loc4_:GameObject = ObjectLibrary.ruqihu(_loc2_);
         _loc4_.size_=param1.hasOwnProperty("size")?param1["size"]:_loc4_.props_.wepilyby();
         return _loc4_;
      }
   }

}