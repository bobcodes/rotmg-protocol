package com.google.analytics.core
{
   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.ecommerce.Transaction;


   public class Ecommerce extends Object
   {
      public function Ecommerce(param1:DebugConfiguration) {
         super();
         this._debug=param1;
         _trans=new Array();
         return;
      }

      private var _debug:DebugConfiguration;

      public function getTransLength() : Number {
         return _trans.length;
      }

      private var _trans:Array;

      public function getTransFromArray(param1:Number) : Transaction {
         return _trans[param1];
      }

      public function addTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String) : Transaction {
         var _loc9_:Transaction = null;
         _loc9_=getTransaction(param1);
         if(_loc9_==null)
         {
            _loc9_=new Transaction(param1,param2,param3,param4,param5,param6,param7,param8);
            _trans.push(_loc9_);
         }
         else
         {
            _loc9_.affiliation=param2;
            _loc9_.total=param3;
            _loc9_.tax=param4;
            _loc9_.shipping=param5;
            _loc9_.city=param6;
            _loc9_.state=param7;
            _loc9_.country=param8;
         }
         return _loc9_;
      }

      public function getTransaction(param1:String) : Transaction {
         var _loc2_:* = NaN;
         _loc2_=0;
         while(_loc2_<_trans.length)
         {
            if(_trans[_loc2_].id==param1)
            {
               return _trans[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
   }

}