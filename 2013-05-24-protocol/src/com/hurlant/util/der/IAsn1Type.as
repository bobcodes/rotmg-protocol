package com.hurlant.util.der
{
   import flash.utils.ByteArray;


   public interface IAsn1Type
   {
      vak function getType() : uint;

      vak function getLength() : uint;

      vak function toDER() : ByteArray;
   }

}