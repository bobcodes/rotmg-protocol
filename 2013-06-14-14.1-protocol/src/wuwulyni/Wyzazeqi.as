package wuwulyni
{
   import flash.net.SharedObject;
   import com.company.assembleegameclient.util.GUID;


   public class Wyzazeqi extends Object
   {
      public function Wyzazeqi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var guid:String;

      public function tufew() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.guid=(this.guid)||(this.soforo());
      }

      private function soforo() : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         var _loc2_:SharedObject = null;
         try
         {
            _loc2_=SharedObject.getLocal("KongregateRotMG","/");
            if(_loc2_.data.hasOwnProperty("GuestGUID"))
            {
               _loc1_=_loc2_.data["GuestGUID"];
            }
         }
         catch(error:Error)
         {
         }
         if(_loc1_==null)
         {
            _loc1_=GUID.create();
            try
            {
               _loc2_=SharedObject.getLocal("KongregateRotMG","/");
               _loc2_.data["GuestGUID"]=_loc1_;
               _loc2_.flush();
            }
            catch(error:Error)
            {
            }
         }
         return _loc1_;
      }
   }

}