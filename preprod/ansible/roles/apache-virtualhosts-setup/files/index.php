<?php
// Fonction pour obtenir l'adresse IP du serveur
function getServerIP() {
    // Utilisation de la variable $_SERVER pour obtenir l'adresse IP du serveur
    if (!empty($_SERVER['SERVER_ADDR'])) {
        return $_SERVER['SERVER_ADDR'];
    } elseif (getenv('SERVER_ADDR')) {
        return getenv('SERVER_ADDR');
    } else {
        return "IP non disponible";
    }
}

// Informations de base sur le serveur
$server_ip = getServerIP();
$os = php_uname();  // Informations sur le système d'exploitation
$php_version = phpversion();  // Version de PHP
$uptime = shell_exec('uptime');  // Temps d'activité du serveur
$sni = $_SERVER['SERVER_NAME'];  // Nom de domaine du serveur

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Installation Serveur</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h1 {
            color: #333;
        }
        .info {
            background-color: #f4f4f4;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .info h2 {
            margin-top: 0;
        }
        .key {
            font-weight: bold;
        }
    </style>
</head>

<body>

    <h1>Test de l'Installation du Serveur</h1>

    <div class="info">
        <h2>Informations Serveur</h2>
        <p><span class="key">Adresse IP du Serveur:</span> <?php echo $server_ip; ?></p>
        <p><span class="key">Système d'Exploitation:</span> <?php echo $os; ?></p>
        <p><span class="key">Version de PHP:</span> <?php echo $php_version; ?></p>
        <p><span class="key">Uptime du Serveur:</span> <?php echo nl2br($uptime); ?></p>
        <p><span class="key">Nom de Domaine (SNI):</span> <?php echo $sni; ?></p>
    </div>

</body>
</html>