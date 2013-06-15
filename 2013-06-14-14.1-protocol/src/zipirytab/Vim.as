package zipirytab
{


   public class Vim extends Object
   {
      public function Vim(param1:*, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false, param5:Boolean=false) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this._key=String(param1).toUpperCase();
         if(param1 is uint)
         {
            this.legevoc=true;
         }
         else
         {
            if(!param1||!(this._key.length==1))
            {
               throw new Error("KeyBind: character (first char) must be a single character. You gave ["+param1+"]");
            }
         }
         if(this.legevoc)
         {
            this._key="keycode:"+this._key;
         }
         if(param2)
         {
            this._key=this._key+"+shift";
         }
         if(param3)
         {
            this._key=this._key+"+ctrl";
         }
         if(param4)
         {
            this._key=this._key+"+alt";
         }
         if(param5)
         {
            this._key=this._key+"+up";
         }
         return;
      }

      private var legevoc:Boolean;

      private var _key:String;

      public function get lemipy() : Boolean {
         return this.legevoc;
      }

      public function get key() : String {
         return this._key;
      }
   }

}