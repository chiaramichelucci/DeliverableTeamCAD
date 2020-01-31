<!DOCTYPE html>
<head>
   <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <style type="text/css">
   </style>
</head>
<body>
@foreach ($docentiList as $docente)
    <tr>
        <td>{{ $docente->nome }}</td>
        <td>{{ $docente->cognome }}</td>
        <td>{{ $docente->orario_ricevimento }}</td>
        <td>{{ $docente->giorno_ricevimento }}</td><br />
    </tr>
@endforeach 

</body>
